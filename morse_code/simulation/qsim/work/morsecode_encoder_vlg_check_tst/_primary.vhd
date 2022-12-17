library verilog;
use verilog.vl_types.all;
entity morsecode_encoder_vlg_check_tst is
    port(
        morsecode_length: in     vl_logic_vector(3 downto 0);
        morsecode_shiftreg: in     vl_logic_vector(12 downto 0);
        sampler_rx      : in     vl_logic
    );
end morsecode_encoder_vlg_check_tst;
