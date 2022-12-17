library verilog;
use verilog.vl_types.all;
entity morsecode_lengthcounter is
    port(
        enable          : in     vl_logic;
        load            : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        q_out           : out    vl_logic_vector(3 downto 0)
    );
end morsecode_lengthcounter;
