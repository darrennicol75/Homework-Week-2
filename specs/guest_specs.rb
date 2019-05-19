require('minitest/autorun')
require('minitest/rg')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("John", "Hey Joe", 100)
    @guest2 = Guest.new("Linda", "Painted Black", 50)
    @guest3 = Guest.new("Billy", "Red light spells danger", 25)
    @guest4 = Guest.new("Pauline", "Wonderwall", 75)

    @room1 = Room.new("The Elvis Room", 20, 5)

  end

  def test_guest_name1
  assert_equal("John", @guest1.name)
  end

  def test_guest_name2
  assert_equal("Linda", @guest2.name)
  end

  def test_guest_name3
  assert_equal("Billy", @guest3.name)
  end

  def test_guest_name4
  assert_equal("Pauline", @guest4.name)
  end

  def test_fav_tune1
    assert_equal("Hey Joe", @guest1.fav_tune)
  end

  #### test customer has cash ####

  def test_wallet
    assert_equal(100, @guest1.wallet)
  end

  #### test customer can spend money ####


  def test_guest_pays_entry_charge
    @guest1.spent_money(@room1)
    assert_equal(95, @guest1.wallet)
  end


end
