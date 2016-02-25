class BestBeaches::Beach
  attr_accessor :name, :location, :description, :map
  @@all=[]

  def initialize(beach_hash)
    beach_hash.each do|key, value| 
      self.send(("#{key}="), value)
    end
    @@all<<self
  end

  def self.create_from_collection(beaches_array)
    beaches_array.each do |beach|
      self.new(beach)
    end
  end
  
  def self.all 
    @@all
  end

  def self.find_beach(num)
    self.all[num]
  end
end