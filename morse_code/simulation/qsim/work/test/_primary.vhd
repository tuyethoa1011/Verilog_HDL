library verilog;
use verilog.vl_types.all;
entity test is
    port(
        enable          : in     vl_logic;
        load            : in     vl_logic;
        reset           : in     vl_logic;
        q_out           : out    vl_logic_vector(3 downto 0);
        shiftreg_out    : out    vl_logic_vector(12 downto 0);
        letter_in       : in     vl_logic_vector(2 downto 0)
    );
end test;
