library verilog;
use verilog.vl_types.all;
entity morsecode_encoder_vlg_sample_tst is
    port(
        letter_in       : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end morsecode_encoder_vlg_sample_tst;
