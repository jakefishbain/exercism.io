class ETL
  def self.transform(old, values={})
    old.values.each do |val|
      val.each do |let| 
        values[let.downcase] = find_key(old, let)
      end
    end
    values
  end

  def self.find_key(old, let)
    old.values.each do |lets| 
      if lets.include?(let)
        return old.key(lets)
      end
    end
  end
  
end

module BookKeeping
  VERSION = 1
end
