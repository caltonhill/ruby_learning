class Name
  @@count = 0
  
  def initialize(first, middle, last)
    @first = first
    @middle = middle
    @last = last
    @@count += 1
  end

  attr_reader :first, :middle, :last
  attr_writer :first, :middle, :last

  def to_string
    puts "#{@first} #{@middle} #{@last}"
  end 

  def self.count
    return @@count
  end
end
  
aName = Name.new("Hoo", "Flung", "Dung")
puts aName.to_string
puts Name.count