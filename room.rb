class Room

attr_accessor :name, :capacity, :entry_charge

  def initialize(name, capacity, entry_charge)
    @name = name
    @capacity = capacity
    @entry_charge = entry_charge
    @room1_guests = []
    @room2_guests = []
    @room3_guests = []
    @room1_song_list = []
    @room2_song_list = []
    @room3_song_list = []
    @room1_takings = []
    @room2_takings = []
    @room3_takings = []
  end

  #### check room head count ####

  def head_count1
    return @room1_guests.count()
  end

  def head_count2
    return @room2_guests.count()
  end

  def head_count3
    return @room3_guests.count()
  end

  #### Add guests ####

  def add_guest_to_room1(guest1)
    @room1_guests.push(guest1)
  end

  def add_guest_to_room2(guest2)
    @room2_guests.push(guest2)
  end

  def add_guest_to_room3(guest3, guest4)
    @room3_guests.push(guest3, guest4)
  end

  #### Remove a guest ####

  def remove_guest_from_room1(guest1)
    @room1_guests.delete(guest1)
  end

  #### Add tune to a room ####

  def add_tune_to_room2(song2)
    @room2_song_list.push(song2)
  end

  def add_tune_to_room3(song1)
    @room3_song_list.push(song1)
  end


  #### MVP End ####

  #### Extensions ####

  # People management

  def room_entry(capacity)
    if capacity <= 20
      return "Welcome to the CCC Elvis Room"
    else
      return "I'm sorry we are at capacity you could try one of our other rooms"
    end
  end


  # Check for charging entry

  def room_has_entry_charge(room1)
    return @entry_charge
  end


  # Charging guest-

  def venue_charge_guest(entry_charge)
    @room1_takings.push(entry_charge)
  end

  # Fav_tune

  # def fav_tuuuunnnnneeee(fav_tune)
  #   if fav_tune  == "Hey Joe"
  #     return "Yaaaaaasssss!"
  #   elsif
  #     return "This CCC sucks!"
  #   end
  # end

  # Cant get to work.

end

######################
