-- This circuit takes as input a 26-bit vector and produces a 5-bit output named
-- INDEX which indicates the highest bit position over all input bits that have
-- a high value. If no inputs bits are high, then assert an ERROR signal.
--
-- entity name: g00_26_5_encoder
--
-- Copyright (C) 2016 Warren Gross
-- Version 1.0
-- Author: Warren Gross; warren.gross@mcgill.ca
-- Date: January 1, 2016
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
entity g00_26_5_encoder is
port ( letter : in std_logic_vector(25 downto 0);
 INDEX : out std_logic_vector(4 downto 0);
 ERROR : out std_logic);
end g00_26_5_encoder; 