library verilog;
use verilog.vl_types.all;
entity morsecode_shiftregister is
    port(
        enable          : in     vl_logic;
        load            : in     vl_logic;
        data_in         : in     vl_logic_vector(10 downto 0);
        shiftreg_out    : out    vl_logic_vector(10 downto 0);
        clk             : in     vl_logic
    );
end morsecode_shiftregister;
