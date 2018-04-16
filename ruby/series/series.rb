class Series

  def initialize(series)
    @series_split = series.split('')
  end

  def slices(div, result = [], counter = 0)
    raise ArgumentError if div > @series_split.length
    mod = div === 1 ? 0 : 1 
    while counter <= @series_split.length - mod
      entry = @series_split[counter..counter + div - 1].join
      result << entry if entry.length === div
      counter += 1
    end
    result
  end

end