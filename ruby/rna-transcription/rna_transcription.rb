class Complement
  def self.of_dna(input)
    strands = {'G' => 'C', 
               'C' => 'G', 
               'T' => 'A', 
               'A' => 'U'}
    string = ''
    input.split('').map do |letter|
      return '' if strands.keys.include?(letter) == false
        string += strands[letter]
    end
    return string
  end
end