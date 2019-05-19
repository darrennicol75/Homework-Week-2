require('minitest/autorun')
require('minitest/rg')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("The Elvis Room", 20, 5)
    @room2 = Room.new("Guns and Roses Room", 22, 5)
    @room3 = Room.new("Kenny Rogers Room", 15, 7.50)

    @song1 = Song.new("Hey Joe", "Jimi Hendrix")
    @song2 = Song.new("Dressed in Black", "Rolling Stones")
    @song3 = Song.new("Red light spells danger", "Billy Ocean")

    @room1_song_list = [@song1, @song2, @song3]


    @guest1 = Guest.new("John", "Hey Joe", 100)
    @guest2 = Guest.new("Linda", "Painted Black", 50)
    @guest3 = Guest.new("Billy", "Red light spells danger", 25)
    @guest4 = Guest.new("Pauline", "Wonderwall", 75)
  end

  #### Test room names ####

  def test_room_name1
    assert_equal("The Elvis Room", @room1.name)
  end

  def test_room_name2
    assert_equal("Guns and Roses Room", @room2.name)
  end

  def test_room_name3
    assert_equal("Kenny Rogers Room", @room3.name)
  end

  #### Test room capacity ####

  def test_room_capacity1
    assert_equal(20, @room1.capacity)
  end

  def test_room_capacity2
    assert_equal(22, @room2.capacity)
  end

  def test_room_capacity3
    assert_equal(15, @room3.capacity)
  end

  #### Test current headcount ####

  def test_head_count1()
      assert_equal(0, @room1.head_count1)
  end

  def test_head_count2()
      assert_equal(0, @room2.head_count2)
  end

  def test_head_count3()
      assert_equal(0, @room3.head_count3)
  end

  #### Test adding guests to rooms ####

  def test_add_guest_to_room1
    @room1.add_guest_to_room1(@guest1)
    assert_equal(1,@room1.head_count1)
  end

  def test_add_guest_to_room2
    @room2.add_guest_to_room2(@guest2)
    assert_equal(1,@room2.head_count2)
  end

  def test_add_guest_to_room3
    @room3.add_guest_to_room3(@guest3, @guest4)
    assert_equal(2,@room3.head_count3)
  end

  #### Test removing guest from a room ####

  def test_remove_guest_from_room1
    @room1.remove_guest_from_room1(@guest1)
    assert_equal(0, @room1.head_count1)
  end

  #### Need to understand why there I cant delete one guest from room3? it only deletes all.  ####

  #### Test adding a tune to a room ####

  def test_add_tune_to_room2
    @room2.add_tune_to_room2(@song2)
    assert_equal("Dressed in Black", @song2.title)
  end

  def test_add_tune_to_room3
    @room3.add_tune_to_room3(@song1)
    assert_equal("Jimi Hendrix", @song1.artist)
  end

  #### MVP End ####

  #### Extensions ####

  # What happens if there are more guests trying to be checked in than there is free space in the room?

  def test_room_entry
    assert_equal("Welcome to the CCC Elvis Room", @room1.room_entry(@room1.capacity))
  end

  # This runs but isnt correct as will always return 20 as it is currently checking the room capacity and not the head count, not sure how to link to actual capacity which should be one although could be linked to my previous question, if you pass a guest into an empty array does it stay there?


  # Karaoke venues usually have an entry fee -

  def test_room_has_entry_charge
    @room1.room_has_entry_charge(@room1)
    assert_equal(5, @room1.entry_charge)
  end

  # Room has entry charge.

  def test_venue_charge_guest
    @room1.venue_charge_guest(@room1_takings)
    assert_equal(5, @room1.entry_charge)
  end

  # Advanced Extensions

  # def test_fav_tuuuunnnnneeee
  #   assert_equal("Yaaaaaasssss", @room1_song_list.fav_tuuuunnnnneeee(@room1.fav_tune))
  # end

  # Cant get to work.

  # Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?

  # I've undertaken this in the paying entry fees section- I created a room1_takings array where fees are passed too.

end

#################
