class Mailbox

  attr_accessor(:letters)

  def initialize(size)
    @max = size
    @box = []
    @letters = []
  end

  def add(mail)
    # @box.push(mail) unless full?

    if(@box.size < @max)
      @box.push(mail)
    end
    if full?
      return "Mailbox is now full"
    else
      @box
    end
  end

  def adds_letter(letter)
    if(letter.class==Letter)
      @letters.push(letter)
    end
  end

  def full?
    @box.size==@max
  end

  def total_postage
    # @box.map(&:postage).reduce(:+)

    @total = 0
    @box.each {|mail| @total += mail.postage}
    @total
  end

end
