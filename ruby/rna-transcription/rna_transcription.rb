class Complement
  def self.of_dna(input)
    return 'G' if input == 'C'
    return 'C' if input == 'G'
  end
end