library verilog;
use verilog.vl_types.all;
entity FSM_vlg_sample_tst is
    port(
        c_datain        : in     vl_logic_vector(3 downto 0);
        half_sec        : in     vl_logic;
        lastbit         : in     vl_logic;
        reset           : in     vl_logic;
        s_datain        : in     vl_logic_vector(12 downto 0);
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FSM_vlg_sample_tst;
