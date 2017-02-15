require('./letter.rb')
require('./postcard.rb')
require('./mailbox.rb')

my_l1 = Letter.new("CA","NY","In class")
my_l2 = Letter.new("CA","WA","At work")
my_p1 = Postcard.new("TX","NY")
my_p2 = Postcard.new("TX","NC")
my_p3 = Postcard.new("VA","OH")

my_mailbox = Mailbox.new(5)
my_mailbox.add(my_l1)
my_mailbox.add(my_l2)
my_mailbox.add(my_p1)
my_mailbox.add(my_p2)
my_mailbox.add(my_p3)

puts my_mailbox.full?
puts my_mailbox.total_postage

my_mailbox.adds_letter(my_l1)
my_mailbox.adds_letter(my_p1)

puts my_mailbox.letters
puts my_mailbox
