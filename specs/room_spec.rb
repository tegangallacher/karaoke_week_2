require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestRoom < Minitest::Test

  def setup
    @guest1 = Guest.new("Tegan", "Cherry Bomb")
    @guest2 = Guest.new("Phoebe", "Wannabe")
    @guest3 = Guest.new("Clare", "Girls, just wanna have fun")
    @guest4 = Guest.new("Charlotte", "Shake it off")
    @guest5 = Guest.new("Chloe", "Toxic")
    @room = Room.new(@song_list)
  end

def test_capacity_of_room
  assert_equal(@room.capacity_count, 0)
end

def test_can_check_in
  guest1 = Guest.new("Tegan", "Cherry Bomb")
    @room.check_in(guest1) 
    assert_equal(@room.capacity_count, 1)
end

def test_can_check_out
  guest1 = Guest.new("Tegan", "Cherry Bomb")
  guest2 = Guest.new("Phoebe", "Wannabe")
  guest3 = Guest.new("Charlotte", "Shake it off")
  @room.check_in(guest1)
  @room.check_in(guest2)
  @room.check_in(guest3)
#now guest2 wants to leave
  @room.check_out(guest2)
  assert_equal(@room.capacity_count, 2)
end

def test_check_available_songs
  song_list = ["Wannabe", "Shake it off", "I love Rock and Roll"]
  assert_equal(@song_list, @room.show_songs)

end

def test_song_list_count
  assert_equal(@room.song_list_count, 0)
end

def test_can_add_song
  song = Song.new("Shake it off", "Taylor Swift")
  @room.add_song(song)
  assert_equal(@room.song_list_count, 1)
end

end