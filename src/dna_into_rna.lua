-- @alvesmarcos / Thu, Mar 15
-- #
-- problem description http://rosalind.info/problems/rna/
--
local dna_input = 'GATGGAACTTGACTACGTAAATT'

local rna = string.gsub(dna_input, 'T', 'U')
print(rna)