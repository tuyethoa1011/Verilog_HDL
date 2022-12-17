library verilog;
use verilog.vl_types.all;
entity morsecode_encoder is
    port(
        letter_in       : in     vl_logic_vector(2 downto 0);
        morsecode_length: out    vl_logic_vector(3 downto 0);
        morsecode_shiftreg: out    vl_logic_vector(12 downto 0)
    );
end morsecode_encoder;
