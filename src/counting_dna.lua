-- @alvesmarcos / Thu, Mar 15
-- #
-- problem description http://rosalind.info/problems/dna/
--
local dna_input = 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'

local _, A = string.gsub(dna_input, 'A', '')
local _, C = string.gsub(dna_input, 'C', '')
local _, G = string.gsub(dna_input, 'G', '')
local _, T = string.gsub(dna_input, 'T', '')

print(string.format("%d %d %d %d", A, C, G, T))