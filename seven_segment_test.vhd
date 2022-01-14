library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity seven_segment_test is
	port(
		Sw : in std_logic_vector(7 downto 0);
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0)
	);

end entity;

architecture structure of seven_segment_test is
	signal seg0 : std_logic_vector(6 downto 0);
	signal seg1 : std_logic_vector(6 downto 0);
	signal seg2 : std_logic_vector(6 downto 0);
begin
	dut: work.display_interface port map (bin => SW,
													  seg0 => seg0,
													  seg1 => seg1,
													  seg2 => seg2);
	HEX0 <= not seg0;
	HEX1 <= not seg1;
	HEX2 <= not seg2;
	
end structure;
