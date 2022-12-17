library verilog;
use verilog.vl_types.all;
entity test_vlg_sample_tst is
    port(
        enable          : in     vl_logic;
        letter_in       : in     vl_logic_vector(2 downto 0);
        load            : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end test_vlg_sample_tst;
