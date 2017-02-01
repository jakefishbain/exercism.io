class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    splits = @phrase.split
    results = {}
    splits.each do |word|
      results[word] = splits.count(word)
    end
    return results
  end
end