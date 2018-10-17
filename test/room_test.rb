require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < Minitest::Test

  def test_it_exists
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:kitchen, 14, 14)
    assert_instance_of Room, room_1
    assert_instance_of Room, room_2
  end

  def test_it_returns_category
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:kitchen, 14, 14)
    assert_equal :bedroom, room_1.category
    assert_equal :kitchen, room_2.category
  end

  def test_it_returns_area
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:kitchen, 14, 14)
    assert_equal 130, room_1.area
    assert_equal 196, room_2.area
  end
  
end
