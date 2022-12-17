library verilog;
use verilog.vl_types.all;
entity morsecode_lengthcounter_vlg_sample_tst is
    port(
        data_in         : in     vl_logic_vector(3 downto 0);
        enable          : in     vl_logic;
        load            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end morsecode_lengthcounter_vlg_sample_tst;
