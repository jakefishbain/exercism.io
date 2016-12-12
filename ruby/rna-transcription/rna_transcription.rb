class Complement
  def self.of_dna(input)
    strands = {'G' => 'C', 
               'C' => 'G', 
               'T' => 'A', 
               'A' => 'U'}
    string = ''
    input.split('').map do |letter|
      string += strands[letter]
    end
    return string
  end
end