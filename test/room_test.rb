require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < MiniTest::Test
  def test_it_exists
    room = Room.new(:bedroom,10,13)
    assert_instance_of Room, room
  end
end
