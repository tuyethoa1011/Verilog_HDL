library verilog;
use verilog.vl_types.all;
entity morsecode_shiftregister_vlg_check_tst is
    port(
        shiftreg_out    : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end morsecode_shiftregister_vlg_check_tst;
