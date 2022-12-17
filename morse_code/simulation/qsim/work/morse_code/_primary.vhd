library verilog;
use verilog.vl_types.all;
entity morse_code is
    port(
        light           : out    vl_logic;
        letter_in       : in     vl_logic_vector(2 downto 0);
        half_sec        : in     vl_logic;
        length_out      : out    vl_logic_vector(3 downto 0);
        lsbit_sreg      : out    vl_logic;
        state           : out    vl_logic_vector(3 downto 0);
        en              : out    vl_logic;
        start           : in     vl_logic;
        reset           : in     vl_logic;
        morsecode_shiftreg: out    vl_logic_vector(12 downto 0)
    );
end morse_code;
