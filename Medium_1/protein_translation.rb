class InvalidCodonError < StandardError
end

class Translation
  PROTEINS = {
    ['AUG'] => 'Methionine',
    ['UUU', 'UUC'] => 'Phenylalanine',
    ['UUA', 'UUG'] => 'Leucine',
    ['UCU', 'UCC', 'UCA', 'UCG'] => 'Serine',
    ['UAU', 'UAC'] => 'Tyrosine',
    ['UGU', 'UGC'] => 'Cysteine',
    ['UGG'] => 'Tryptophan',
    ['UAA', 'UAG', 'UGA'] => 'STOP'
  }

  def self.of_codon(codon)
    PROTEINS.each do |k, v|
      return v if k.include?(codon)
    end
  end

  def self.of_rna(strand)
    proteins = PROTEINS.keys.flatten
    result = []
    strand.scan(/[A-Z]{3}/).each do |codon|
      raise InvalidCodonError unless proteins.include?(codon)
      return result if of_codon(codon) == 'STOP'
      result << of_codon(codon)
    end
    result
  end
end
