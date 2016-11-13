require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < Minitest::Test

def setup
  @guest = Guest.new("Tegan", "Cherry Bomb")
end


def test_guest_has_a_name
  assert_equal("Tegan", @guest.name)
end

def test_guest_has_favourite_song
  assert_equal("Cherry Bomb", @guest.favourite_song)
end

def test_guest_can_sing
  assert_equal("I love Cherry Bomb!!", @guest.sing)
end


end
