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

 def rooms_by_category
   @rooms.to_h
 end

end


house = House.new("$400000", "123 sugar lane")
# p house.price
# p house.address
# p house.rooms
room_1 = Room.new(:bedroom, 10, 13)
room_2 = Room.new(:bedroom, 11, 15)
room_3 = Room.new(:living_room, 25, 15)
room_4 = Room.new(:basement, 30, 41)

house.add_room(room_1)
house.add_room(room_2)
house.add_room(room_3)
house.add_room(room_4)
house.rooms

p house.area.class
p house.rooms_by_sorted_area
# p house.rooms_by_category
