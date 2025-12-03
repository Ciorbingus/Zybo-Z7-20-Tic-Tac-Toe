library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity gameLogic is
    Port ( 
        clk : in std_logic;
        input_data : in std_logic_vector(31 downto 0); 
        output_game_status : out std_logic_vector(31 downto 0)
    );
end gameLogic;

architecture Behavioral of gameLogic is

    type game_state is (IDLE, RUNNING, STOP);
    signal current_game_state : game_state := IDLE;

    signal ready_s : std_logic;
    signal move_index : std_logic_vector(3 downto 0);
    signal start_s : std_logic;
    signal reset_s : std_logic;

    signal ready_prev : std_logic := '0';
    signal move_trigger : std_logic; 

    signal board : std_logic_vector(17 downto 0) := (others => '0');
    signal game_over_state : std_logic_vector(1 downto 0) := "00"; 
    signal error_code : std_logic_vector(1 downto 0) := "00";
    signal player_to_move : std_logic_vector(1 downto 0) := "10"; 
    
    signal board_is_full : std_logic := '0';
    signal win_flag : std_logic := '0';
    signal index : integer range 0 to 31; 

begin

    ready_s <= input_data(31); 
    
    move_index <= input_data(3 downto 0);
    start_s <= input_data(5);
    reset_s <= input_data(4);
    
    index <= to_integer(unsigned(move_index)) * 2 + 1;

    process(clk)
    begin
        if rising_edge(clk) then
            ready_prev <= ready_s;
        end if;
    end process;
    
    move_trigger <= '1' when (ready_s = '1' and ready_prev = '0') else '0';

    check_board_logic : process(board)
    begin
        win_flag <= '0';
        
        if board(1) = '1' then
           if board(1 downto 0) = board(3 downto 2) and board(1 downto 0) = board(5 downto 4) then win_flag <= '1'; end if;
           if board(1 downto 0) = board(9 downto 8) and board(1 downto 0) = board(17 downto 16) then win_flag <= '1'; end if;
           if board(1 downto 0) = board(7 downto 6) and board(1 downto 0) = board(13 downto 12) then win_flag <= '1'; end if;
        end if;
        
        if board(9) = '1' then
           if board(9 downto 8) = board(7 downto 6) and board(9 downto 8) = board(11 downto 10) then win_flag <= '1'; end if;
           if board(9 downto 8) = board(5 downto 4) and board(9 downto 8) = board(13 downto 12) then win_flag <= '1'; end if;
           if board(9 downto 8) = board(3 downto 2) and board(9 downto 8) = board(15 downto 14) then win_flag <= '1'; end if;
        end if;
        
        if board(17) = '1' then
           if board(17 downto 16) = board(11 downto 10) and board(17 downto 16) = board(5 downto 4) then win_flag <= '1'; end if;
           if board(17 downto 16) = board(13 downto 12) and board(17 downto 16) = board(15 downto 14) then win_flag <= '1'; end if;
        end if;
    
        board_is_full <= board(1) and board(3) and board(5) and 
                         board(7) and board(9) and board(11) and
                         board(13) and board(15) and board(17);
    end process;

    fsm : process(clk)
    begin
        if rising_edge(clk) then
        
            case current_game_state is
                
                when IDLE => 
                    game_over_state <= "00";
                    error_code <= "00";
                    if start_s = '1' then 
                        board <= (others => '0');
                        player_to_move <= "10";
                        current_game_state <= RUNNING;
                    end if;
                
                when RUNNING =>
                    if reset_s = '1' then
                        current_game_state <= IDLE;
                        board <= (others => '0');
                        
                    elsif win_flag = '1' then
                         current_game_state <= STOP;
                         
                    elsif board_is_full = '1' then
                         current_game_state <= STOP;
                         
                    else
                        if move_trigger = '1' then
                            if index > 17 then
                                error_code <= "11"; 
                                
                            elsif board(index) = '1' then
                                error_code <= "10"; 
                                
                            else
                                board(index downto (index - 1)) <= player_to_move;
                                
                                player_to_move(0) <= not player_to_move(0);
                                
                                error_code <= "00";
                            end if;
                        end if;
                    end if;
                
                when STOP =>
                    if win_flag = '1' then
                        game_over_state <= '1' & (not player_to_move(0));
                    else
                        game_over_state <= "01";
                    end if;

                    if start_s = '1' or reset_s = '1' then
                        current_game_state <= IDLE;
                    end if;
                    
            end case;
        end if;
    end process;
    
    output_game_status(17 downto 0) <= board;
    output_game_status(19 downto 18) <= error_code;
    output_game_status(21 downto 20) <= game_over_state;
    output_game_status(31 downto 22) <= (others => '0');
    
end Behavioral;