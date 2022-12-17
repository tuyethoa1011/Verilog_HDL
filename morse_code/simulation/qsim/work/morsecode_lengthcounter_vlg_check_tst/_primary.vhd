library verilog;
use verilog.vl_types.all;
entity morsecode_lengthcounter_vlg_check_tst is
    port(
        q_out           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end morsecode_lengthcounter_vlg_check_tst;
