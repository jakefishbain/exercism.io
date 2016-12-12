class Complement
  def self.of_dna(input)
    return 'G' if input == 'C'
    return 'C' if input == 'G'
    return 'A' if input == 'T'
    return 'U' if input == 'A'
  end
end