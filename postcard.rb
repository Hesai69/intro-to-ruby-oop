class Postcard

  attr_accessor(:postage, :to_address, :from_address)

  def initialize(to, from)
    @to_address = to
    @from_address = from
    @postage = 0.25
  end
end
