class Room
  attr_reader :category
  def initialize(category, height, width)
    @category = category
    @height = height
    @width = width
  end

  def area
    @height * @width
  end

end

# room = Room.new(:kitchen, 10, 13)
# p room.area
# p room.category
