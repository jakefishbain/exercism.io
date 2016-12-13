class Pangram

  def self.pangram?(phrase)
    alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    phrase_array = phrase.split('')
    alphabet.each { |letter| return false unless phrase_array.include?(letter) }
  end
end

# puts Pangram.pangram?('I love lamp')