class BeerSong
  def verse(num)
    p1 = "#{grammarize_bottles(num)} of beer on the wall, #{grammarize_bottles(num)} of beer.".capitalize
    num === 0 ? p2 = zero :
    p2 = "Take #{num === 1 ? 'it' : 'one'} down and pass it around, #{grammarize_bottles(num -1)} of beer on the wall."
    p1 + "\n" + p2 + "\n"
  end

  def verses(start, stop)
    (stop..start).to_a.reverse.map { |num| verse(num) + "\n" }.join('').chomp
  end
  private

  def grammarize_bottles(num)
    case num 
    when 1
      '1 bottle'
    when 0 
      'no more bottles' 
    else
      "#{num} bottles"
    end
  end

  def zero
    'Go to the store and buy some more, 99 bottles of beer on the wall.'
  end
end

module BookKeeping
  VERSION=3
end