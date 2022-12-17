library verilog;
use verilog.vl_types.all;
entity FSM is
    port(
        start           : in     vl_logic;
        half_sec        : in     vl_logic;
        reset           : in     vl_logic;
        light           : out    vl_logic;
        c_datain        : in     vl_logic_vector(3 downto 0);
        s_datain        : in     vl_logic_vector(12 downto 0);
        ctrl_enable     : out    vl_logic;
        state           : out    vl_logic_vector(3 downto 0);
        lastbit         : in     vl_logic
    );
end FSM;
