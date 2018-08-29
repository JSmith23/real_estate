require './lib/room'
require 'pry'

class House
  attr_reader :price,
              :address,
              :rooms
  def initialize(price,address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(house_rooms)
    @rooms << house_rooms
  end

  def rooms_from_category(house_space)
    @rooms.find_all do |room|
     if room.category == house_space
       space = room
     end
     space
   end
 end

 def area
   area_array = []
   @rooms.each do |are|
     area_array << are.area
   end
   area_array.sum
 end

 def rooms_by_sorted_area
   holder = @rooms.sort do |room|
     room.area
   end
   holder
 end

 def price_per_square_foot
   @price.to_i / area
 end
 
end
