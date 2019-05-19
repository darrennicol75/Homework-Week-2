class Guest

attr_accessor :name, :fav_tune, :wallet

  def initialize(name, fav_tune, wallet)
    @name = name
    @fav_tune = fav_tune
    @wallet = wallet
  end

  # Guest spends money

  def spent_money(entry_fee)
    @wallet -= entry_fee.entry_charge
  end

end
