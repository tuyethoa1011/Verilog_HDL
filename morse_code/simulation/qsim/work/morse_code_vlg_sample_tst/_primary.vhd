library verilog;
use verilog.vl_types.all;
entity morse_code_vlg_sample_tst is
    port(
        half_sec        : in     vl_logic;
        letter_in       : in     vl_logic_vector(2 downto 0);
        reset           : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end morse_code_vlg_sample_tst;
