library verilog;
use verilog.vl_types.all;
entity morse_code_vlg_check_tst is
    port(
        en              : in     vl_logic;
        length_out      : in     vl_logic_vector(3 downto 0);
        light           : in     vl_logic;
        lsbit_sreg      : in     vl_logic;
        morsecode_shiftreg: in     vl_logic_vector(12 downto 0);
        state           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end morse_code_vlg_check_tst;
