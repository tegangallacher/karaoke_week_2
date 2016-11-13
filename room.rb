class Room

  attr_reader :song_list, :guest_list

    def initialize(song_list)
      @song_list = []
      @guest_list = []
    end

def capacity_count
  @guest_list.count
end

def check_in(guest)
  @guest_list << guest
end


def check_out(guest)
  @guest_list.delete(guest)
end

def show_songs
  puts @song_list
end

def add_song(song)
  @song_list << song
end

def song_list_count
  @song_list.count
end
end