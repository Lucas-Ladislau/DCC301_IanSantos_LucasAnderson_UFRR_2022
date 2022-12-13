LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY unidade_controle IS
    PORT(
        clock    : IN STD_LOGIC;
        opcode   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        JUMP     : OUT STD_LOGIC;
        BRANCH   : OUT STD_LOGIC;
        MEMREAD  : OUT STD_LOGIC;
        MEMTOREG : OUT STD_LOGIC;
        ALUOP    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        MEMWRITE : OUT STD_LOGIC;
        ALUSRC   : OUT STD_LOGIC;
        REGWRITE : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE Behavioral OF unidade_controle IS
BEGIN
    PROCESS(clock, opcode)
    CONSTANT add   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
    CONSTANT addi  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001";
    CONSTANT sub   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
    CONSTANT subi  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011";
	 CONSTANT mul   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100";
    CONSTANT lw    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101";
    CONSTANT sw    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110";
	 CONSTANT move  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111";
    CONSTANT li    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000";
    CONSTANT beq   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001";
	 CONSTANT bne   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010";
	 CONSTANT if_op : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1011";
	 CONSTANT j     : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100";
    BEGIN
        CASE opcode IS 
            WHEN add =>
                ALUOP    <= add;
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0'; 			 
            WHEN addi =>
                ALUOP    <= addi;
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';   		 
            WHEN sub =>
                ALUOP    <= sub;                
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0'; 				 
            WHEN subi =>
                ALUOP    <= subi;
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0'; 
				WHEN mul =>
                ALUOP    <= mul;
                ALUSRC   <= '0';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0'; 			 
            WHEN lw =>
                ALUOP    <=  lw;
                MEMREAD  <= '1';
                MEMTOREG <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';                                
                MEMWRITE <= '0';
                ALUSRC   <= '0';                
            WHEN sw =>
                ALUOP    <=  sw;
                MEMWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                                
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN move =>
                ALUOP    <=  move;
                ALUSRC   <= '0';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
				WHEN li =>
                ALUOP    <=  li;
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';  			 
            WHEN beq =>
                ALUOP    <= beq;
                BRANCH   <= '1';
                JUMP     <= '0';  
                MEMREAD  <= '0';              
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
				WHEN bne =>
                ALUOP    <= bne;
                BRANCH   <= '1';
                JUMP     <= '0';  
                MEMREAD  <= '0';              
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
				WHEN if_op =>
                ALUOP    <= if_op;
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN j =>
                ALUOP    <=   j;
                JUMP     <= '1';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN OTHERS => 
                ALUOP    <=   j;
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
            END CASE;           
    END PROCESS;
END;