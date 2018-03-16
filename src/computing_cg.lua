-- @alvesmarcos / Thu, Mar 15
-- #
-- problem description http://rosalind.info/problems/gc/
--
local dna_dict = {}
local kmax = 0
local max = 0
dna_dict['Rosalind_6404'] = 'CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCCTCCCACTAATAATTCTGAGG'
dna_dict['Rosalind_5959'] = 'CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCTATATCCATTTGTCAGCAGACACGC'
dna_dict['Rosalind_0808'] = 'CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT'

for k, v in pairs(dna_dict) do
  local _, len1 = string.gsub(v, 'C', '')
  local _, len2 = string.gsub(v, 'G', '')
  local sum = len1 + len2

  if sum > max then
    max = sum
    kmax = k
  end
end
print(kmax)
print(string.format("%f", 100.0*max/#dna_dict[kmax]))
