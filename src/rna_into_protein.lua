-- @alvesmarcos / Thu, Mar 15
-- #
-- problem description http://rosalind.info/problems/prot/
--
local table = {
  UUU = 'F', UCU = 'S', UAU = 'Y', UGU = 'C',
  UUC = 'F', UCC = 'S', UAC = 'Y', UGC = 'C',
  UUA = 'L', UCA = 'S', UAA = '', UGA = '', 
  UUG = 'L', UCG = 'S', UAG = '', UGG = 'W',
  CUU = 'L', CCU = 'P', CAU = 'H', CGU = 'R',
  CUC = 'L', CCC = 'P', CAC = 'H', CGC = 'R',
  CUA = 'L', CCA = 'P', CAA = 'Q', CGA = 'R',
  CUG = 'L', CCG = 'P', CAG = 'Q', CGG = 'R',
  AUU = 'I', ACU = 'T', AAU = 'N', AGU = 'S',
  AUC = 'I', ACC = 'T', AAC = 'N', AGC = 'S',
  AUA = 'I', ACA = 'T', AAA = 'K', AGA = 'R',
  AUG = 'M', ACG = 'T', AAG = 'K', AGG = 'R',
  GUU = 'V', GCU = 'A', GAU = 'D', GGU = 'G',
  GUC = 'V', GCC = 'A', GAC = 'D', GGC = 'G',
  GUA = 'V', GCA = 'A', GAA = 'E', GGA = 'G',
  GUG = 'V', GCG = 'A', GAG = 'E', GGG = 'G'
}
local rna_input = 'AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA'
local protein = ''
local count = 0
local code = ''
local istart = rna_input:find('AUG')

for i = istart, #rna_input do
  code = code..rna_input:sub(i,i)
  count = count + 1
  if count == 3 then
    protein = protein..table[code]
    code = ''
    count = 0
  end
end

print(protein)