class Name
  
  def initialize(first, middle, last)
    @first = first
    @middle = middle
    @last = last
  end
  
attr_reader :first, :middle, :last
attr_writer :first, :middle, :last
  
  def to_string
    puts "#{@first} #{@middle} #{@last}"
  end

end

aName = Name.new("James", "Hector", "Macdonald")
#change first name by assigning a new value
aName.first = "Hamish"
aName.last = "Blouse"
puts aName.to_string
puts aName.middle
