
module Hamming
  def Hamming.compute(dna1, dna2)
    if dna1.size != dna2.size
      raise ArgumentError, "DNA strands size must be equal"
    end
    index = 0
    diff_nucleotides = 0
    dna1.each_char do |c|
      if c != dna2[index]
        diff_nucleotides += 1
      end
      index += 1
    end
    diff_nucleotides
  end
end
