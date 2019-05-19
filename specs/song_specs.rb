require('minitest/autorun')
require('minitest/rg')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Hey Joe", "Jimi Hendrix")
    @song2 = Song.new("Dressed in Black", "Rolling Stones")
    @song3 = Song.new("Red light spells danger", "Billy Ocean")

    @room1_song_list = [@song1, @song2, @song3]

  end

  def test_song_title
  assert_equal("Hey Joe", @song1.title)
  end

  def test_song_artist
  assert_equal("Jimi Hendrix", @song1.artist)
  end

  def test_song_title
  assert_equal("Dressed in Black", @song2.title)
  end

  def test_song_artist
  assert_equal("Rolling Stones", @song2.artist)
  end

  def test_song_title
  assert_equal("Red light spells danger", @song3.title)
  end

  def test_song_artist
  assert_equal("Billy Ocean", @song3.artist)
  end
end
