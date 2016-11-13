require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../song.rb')
require_relative('../guest.rb')

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("Wannabe", "Spice Girls")
  end

def test_song_name
  assert_equal("Wannabe", @song1.song_name)
end

def test_song_artist
  assert_equal("Spice Girls", @song1.artist)
end

end