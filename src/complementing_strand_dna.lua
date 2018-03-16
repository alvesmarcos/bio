-- @alvesmarcos / Thu, Mar 15
-- #
-- problem description http://rosalind.info/problems/rna/
--
local dna_input = 'AAAACCCGGT'
local dna_reverse = string.reverse(dna_input)
local output = ''

for c in dna_reverse:gmatch('.') do
  local code = ''
  -- A-T | C-G
  if c=='A' then
    code = 'T'
  elseif c=='T' then
    code = 'A'
  elseif c=='C' then
    code = 'G'
  elseif c== 'G' then
    code = 'C'
  end
  output = output..code
end

print(output)
