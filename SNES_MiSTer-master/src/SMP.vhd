library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
 

entity SMP is
	port( 
		CLK 				: in std_logic;
		RST_N 			: in std_logic; 
		CE 				: in std_logic;
		ENABLE 			: in std_logic;
		SYSCLKF_CE		: in std_logic;
		
		A     			: out std_logic_vector(15 downto 0);
		DI       		: in std_logic_vector(7 downto 0);
		DO       		: out std_logic_vector(7 downto 0);
		WE  				: out std_logic;
		  
		PA					: in std_logic_vector(1 downto 0);
		PARD_N			: in std_logic;
		PAWR_N			: in std_logic;
		CPU_DI			: in std_logic_vector(7 downto 0);
		CPU_DO			: out std_logic_vector(7 downto 0);
		CS					: in std_logic;
		CS_N				: in std_logic;
		
		DBG_REG			: in std_logic_vector(7 downto 0);
		DBG_DAT_IN		: in std_logic_vector(7 downto 0);
		DBG_SMP_DAT		: out std_logic_vector(7 downto 0);
		DBG_CPU_DAT		: out std_logic_vector(7 downto 0);
		DBG_CPU_DAT_WR	: in std_logic;
		DBG_SMP_DAT_WR	: in std_logic;
		BRK_OUT 			: out std_logic
	);
end SMP;

architecture rtl of SMP is 

	signal SPC700_D_IN, SPC700_D_OUT : std_logic_vector(7 downto 0);
	signal SPC700_A : std_logic_vector(15 downto 0);
	signal SPC700_R_WN : std_logic;
	signal SPC700_CE : std_logic;
	signal TIMER_CE : std_logic;
	
	type Port_t is array (0 to 3) of std_logic_vector(7 downto 0);
	signal CPUI : Port_t;
	signal CPUO : Port_t;
	
	signal CLK_SPEED : std_logic_vector(1 downto 0);
	signal TM_SPEED : std_logic_vector(1 downto 0);
	signal TIMERS_ENABLE, TIMERS_DISABLE : std_logic;
	signal RAM_WRITE_EN : std_logic;
	signal TM_EN : std_logic_vector(2 downto 0);
	signal IPL_EN : std_logic;
	signal T0DIV : std_logic_vector(7 downto 0);
	signal T1DIV : std_logic_vector(7 downto 0);
	signal T2DIV : std_logic_vector(7 downto 0);
	signal T0OUT : std_logic_vector(3 downto 0);
	signal T1OUT : std_logic_vector(3 downto 0);
	signal T2OUT : std_logic_vector(3 downto 0);
	type Aux_t is array (0 to 1) of std_logic_vector(7 downto 0);
	signal AUX : Aux_t;
	
	signal RESET_PORT : std_logic_vector(1 downto 0);
	signal TM01_CNT : unsigned(8 downto 0);
	signal TM2_CNT : unsigned(5 downto 0);
	signal T0_CNT, T1_CNT, T2_CNT : unsigned(7 downto 0);
		
	type IplRom_t is array(0 to 63) of std_logic_vector(7 downto 0);
	constant  IPLROM: IplRom_t := (
	x"cd",
	x"ef",
	x"bd",
	x"e8",
	x"00",
	x"c6",
	x"1d",
	x"d0",
	x"fc",
	x"8f",
	x"aa",
	x"f4",
	x"8f",
	x"bb",
	x"f5",
	x"78",
	x"cc",
	x"f4",
	x"d0",
	x"fb",
	x"2f",
	x"19",
	x"eb",
	x"f4",
	x"d0",
	x"fc",
	x"7e",
	x"f4",
	x"d0",
	x"0b",
	x"e4",
	x"f5",
	x"cb",
	x"f4",
	x"d7",
	x"00",
	x"fc",
	x"d0",
	x"f3",
	x"ab",
	x"01",
	x"10",
	x"ef",
	x"7e",
	x"f4",
	x"10",
	x"eb",
	x"ba",
	x"f6",
	x"da",
	x"00",
	x"ba",
	x"f4",
	x"c4",
	x"f4",
	x"dd",
	x"5d",
	x"d0",
	x"db",
	x"1f",
	x"00",
	x"00",
	x"c0",
	x"ff"
	);

begin

	SPC700_CE <= ENABLE and CE;
	
	process(RST_N, CLK)
	begin
		if RST_N = '0' then
			CPUI <= (others => (others => '0'));
		elsif rising_edge(CLK) then
			if PAWR_N = '0' and CS = '1' and CS_N = '0' and SYSCLKF_CE = '1' then
				CPUI(to_integer(unsigned(PA))) <= CPU_DI;
			end if;
			
			if ENABLE = '0' then
				if DBG_SMP_DAT_WR = '1' then
					case DBG_REG is
						when x"04" => CPUI(0) <= DBG_DAT_IN;
						when x"05" => CPUI(1) <= DBG_DAT_IN;
						when x"06" => CPUI(2) <= DBG_DAT_IN;
						when x"07" => CPUI(3) <= DBG_DAT_IN;
						when others => null;
					end case;
				end if;
			elsif SPC700_CE = '1' then
				if RESET_PORT(0) = '1' then
					CPUI(0) <= (others=>'0');
					CPUI(1) <= (others=>'0');
				end if;
				if RESET_PORT(1) = '1' then
					CPUI(2) <= (others=>'0');
					CPUI(3) <= (others=>'0');
				end if;
			end if;
		end if;
	end process;

	CPU_DO <= CPUO(to_integer(unsigned(PA)));
	
	
	SPC700: entity work.SPC700 
	port map (
		CLK      	=> CLK,
		RST_N    	=> RST_N,
		RDY      	=> SPC700_CE,
		IRQ_N 		=> '1',
		A_OUT 		=> SPC700_A,
		D_IN     	=> SPC700_D_IN,
		D_OUT    	=> SPC700_D_OUT,
		WE       	=> SPC700_R_WN,
		
		DBG_REG     => DBG_REG,
		DBG_DAT_IN	=> DBG_DAT_IN,
		DBG_DAT_OUT	=> DBG_CPU_DAT,
		DBG_DAT_WR	=> DBG_CPU_DAT_WR,
		BRK_OUT		=> BRK_OUT
	);
	
	
	process(CLK, RST_N)
		variable TM_STEP : unsigned(4 downto 0);
		variable NEW_TM01_CNT : unsigned(8 downto 0);
		variable NEW_TM2_CNT : unsigned(5 downto 0);
	begin
		if RST_N = '0' then
			CLK_SPEED <= (others=>'0');
			TM_SPEED <= (others=>'0');
			TIMERS_ENABLE <= '1';
			TIMERS_DISABLE <= '0';
			RAM_WRITE_EN <= '1';
			IPL_EN <= '1';
			TM_EN <= (others=>'0');
			RESET_PORT <= (others=>'1');
			CPUO <= (others=> (others=> '0'));
			T0OUT <= (others=>'0');
			T1OUT <= (others=>'0');
			T2OUT <= (others=>'0');
			T0DIV <= (others=>'1');
			T1DIV <= (others=>'1');
			T2DIV <= (others=>'1');
			AUX <= (others=> (others=> '0'));

			TM01_CNT <= (others=>'0');
			TM2_CNT <= (others=>'0');
			T0_CNT <= (others=>'0');
			T1_CNT <= (others=>'0');
			T2_CNT <= (others=>'0');
			
			TIMER_CE <= '0';
		elsif rising_edge(CLK) then
			TIMER_CE <= '0';
			if ENABLE = '0' then
				if DBG_SMP_DAT_WR = '1' then
					case DBG_REG is
						when x"01" => 
							IPL_EN <= DBG_DAT_IN(7); 
							TM_EN <= DBG_DAT_IN(2 downto 0);
							RESET_PORT <= DBG_DAT_IN(5 downto 4);
						when x"0A" => 
							T0DIV <= DBG_DAT_IN;
						when x"0B" => 
							T1DIV <= DBG_DAT_IN;
						when x"0C" => 
							T2DIV <= DBG_DAT_IN;
						when others => null;
					end case;
				end if;
			elsif SPC700_CE = '1' then
				TIMER_CE <= '1';
				
				RESET_PORT <= "00";
				
				if SPC700_A(15 downto 4) = x"00F" then
					if SPC700_R_WN = '0' then
						case SPC700_A(3 downto 0) is
							when x"0" =>
								CLK_SPEED <= SPC700_D_OUT(7 downto 6);
								TM_SPEED <= SPC700_D_OUT(5 downto 4);
								TIMERS_ENABLE <= SPC700_D_OUT(3);
								RAM_WRITE_EN <= SPC700_D_OUT(1);
								TIMERS_DISABLE <= SPC700_D_OUT(0);
							when x"1" =>
								IPL_EN <= SPC700_D_OUT(7);
								RESET_PORT <= SPC700_D_OUT(5 downto 4);
								TM_EN <= SPC700_D_OUT(2 downto 0);
								if SPC700_D_OUT(0) = '1' and TM_EN(0) = '0' then
									T0OUT <= (others=>'0');
									T0_CNT <= (others=>'0');
								end if;
								if SPC700_D_OUT(1) = '1' and TM_EN(1) = '0' then
									T1OUT <= (others=>'0');
									T1_CNT <= (others=>'0');
								end if;
								if SPC700_D_OUT(2) = '1' and TM_EN(2) = '0' then
									T2OUT <= (others=>'0');
									T2_CNT <= (others=>'0');
								end if;
							when x"4" | x"5" | x"6" | x"7" =>
								CPUO(to_integer(unsigned(SPC700_A(1 downto 0)))) <= SPC700_D_OUT;
							when x"8" | x"9" =>
								AUX(to_integer(unsigned(SPC700_A(0 downto 0)))) <= SPC700_D_OUT;
							when x"A" => 
								T0DIV <= SPC700_D_OUT;
							when x"B" => 
								T1DIV <= SPC700_D_OUT;
							when x"C" => 
								T2DIV <= SPC700_D_OUT;
							when others => null;
						end case;
					else
						case SPC700_A(3 downto 0) is
							when x"D" => 
								T0OUT <= (others=>'0');
							when x"E" => 
								T1OUT <= (others=>'0');
							when x"F" => 
								T2OUT <= (others=>'0');
							when others => null;
						end case;
					end if;
				end if;
			end if;
			
			if TIMER_CE = '1' then
				TM_STEP := ("00001" sll to_integer(unsigned(CLK_SPEED))) + ("00010" sll to_integer(unsigned(TM_SPEED)));
				NEW_TM01_CNT := TM01_CNT + TM_STEP;
				if NEW_TM01_CNT(8 downto 7) = "11" then
					TM01_CNT <= NEW_TM01_CNT and "001111111";
					if TM_EN(0) = '1' and TIMERS_ENABLE = '1' and TIMERS_DISABLE = '0' then
						T0_CNT <= T0_CNT + 1;
						if T0_CNT + 1 = unsigned(T0DIV) then
							T0_CNT <= (others=>'0');
							T0OUT <= std_logic_vector(unsigned(T0OUT) + 1);
						end if;
					end if;
					if TM_EN(1) = '1' and TIMERS_ENABLE = '1' and TIMERS_DISABLE = '0' then
						T1_CNT <= T1_CNT + 1;
						if T1_CNT + 1 = unsigned(T1DIV) then
							T1_CNT <= (others=>'0');
							T1OUT <= std_logic_vector(unsigned(T1OUT) + 1);
						end if;
					end if;
				else
					TM01_CNT <= NEW_TM01_CNT;
				end if;
				
				NEW_TM2_CNT := TM2_CNT + TM_STEP;
				if NEW_TM2_CNT(5 downto 4) = "11" then
					TM2_CNT <= NEW_TM2_CNT and "001111";
					if TM_EN(2) = '1' and TIMERS_ENABLE = '1' and TIMERS_DISABLE = '0' then
						T2_CNT <= T2_CNT + 1;
						if T2_CNT + 1 = unsigned(T2DIV) then
							T2_CNT <= (others=>'0');
							T2OUT <= std_logic_vector(unsigned(T2OUT) + 1);
						end if;
					end if;
				else
					TM2_CNT <= NEW_TM2_CNT;
				end if;
			end if;
		end if;
	end process;
	
	process(SPC700_A, CPUI, DI, IPL_EN, AUX, T0OUT, T1OUT, T2OUT)
	begin
		if SPC700_A(15 downto 4) = x"00F" then
			case SPC700_A(3 downto 0) is
				when x"2" | x"3" => 			--DSPADDR/DSPDATA
					SPC700_D_IN <= DI;
				when x"4" | x"5" | x"6" | x"7" =>
					SPC700_D_IN <= CPUI(to_integer(unsigned(SPC700_A(1 downto 0))));
				when x"8" | x"9" =>
					SPC700_D_IN <= AUX(to_integer(unsigned(SPC700_A(0 downto 0))));
				when x"D" => 
					SPC700_D_IN <= x"0" & T0OUT;
				when x"E" => 
					SPC700_D_IN <= x"0" & T1OUT;
				when x"F" => 
					SPC700_D_IN <= x"0" & T2OUT;
				when others =>
					SPC700_D_IN <= (others=>'0');
			end case;
		elsif SPC700_A >= x"FFC0" and IPL_EN = '1' then
			SPC700_D_IN <= IPLROM(to_integer(unsigned(SPC700_A(5 downto 0))));
		else
			SPC700_D_IN <= DI;
		end if;
	end process;
	
	A <= SPC700_A;
	WE <= SPC700_R_WN or not RAM_WRITE_EN;
	DO <= SPC700_D_OUT;

process( DBG_REG, CPUI, CPUO, CLK_SPEED, TM_SPEED, TIMERS_ENABLE, TIMERS_DISABLE, RAM_WRITE_EN, 
			IPL_EN, RESET_PORT, TM_EN, T0DIV, T1DIV, T2DIV, T0OUT, T1OUT, T2OUT, AUX )
begin
	case DBG_REG is
		when x"00" => DBG_SMP_DAT <= CPUI(0);
		when x"01" => DBG_SMP_DAT <= CPUI(1);
		when x"02" => DBG_SMP_DAT <= CPUI(2);
		when x"03" => DBG_SMP_DAT <= CPUI(3);
		when x"04" => DBG_SMP_DAT <= CPUO(0);
		when x"05" => DBG_SMP_DAT <= CPUO(1);
		when x"06" => DBG_SMP_DAT <= CPUO(2);
		when x"07" => DBG_SMP_DAT <= CPUO(3);
		when x"08" => DBG_SMP_DAT <= CLK_SPEED & TM_SPEED & TIMERS_DISABLE & "0" & RAM_WRITE_EN & TIMERS_ENABLE;
		when x"09" => DBG_SMP_DAT <= IPL_EN & "0" & RESET_PORT & "0" & TM_EN;
		when x"0A" => DBG_SMP_DAT <= T0DIV;
		when x"0B" => DBG_SMP_DAT <= T1DIV;
		when x"0C" => DBG_SMP_DAT <= T2DIV;
		when x"0D" => DBG_SMP_DAT <= "0000" & T0OUT;
		when x"0E" => DBG_SMP_DAT <= "0000" & T1OUT;
		when x"0F" => DBG_SMP_DAT <= "0000" & T2OUT;
		when x"10" => DBG_SMP_DAT <= AUX(0);
		when x"11" => DBG_SMP_DAT <= AUX(1);
		when others => DBG_SMP_DAT <= x"00";
	end case; 
end process;

end rtl;