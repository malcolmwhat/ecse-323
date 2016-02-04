-- This circuit takes as input a 26-bit vector and produces a 5-bit output named
-- INDEX which indicates the highest bit position over all input bits that have
-- a high value. If no inputs bits are high, then assert an ERROR signal.
--
-- entity name: g14_26_5_encoder
--
-- Copyright (C) 2016 Malcolm Watt, Joanna Halpern
-- Version 0.0.1
--
-- Authors: Malcolm Watt (260585950); malcolm.watt@mail.mcgill.ca
-- 			Joanna Halpern (260410826); joanna.halpern@mail.mcgill.ca
--
-- Date: February 4 2016

library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g14_26_5_encoder is
port ( LETTER : in std_logic_vector(25 downto 0);
       INDEX : out std_logic_vector(4 downto 0);
       ERROR : out std_logic);
end g14_26_5_encoder; 
