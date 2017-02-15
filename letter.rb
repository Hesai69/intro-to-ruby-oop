require('./postcard.rb')

class Letter < Postcard

  def initialize(to, from, msg)
    super(to, from)
    @message = msg
    @postage = 0.75
  end
end
