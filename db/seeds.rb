
User.destroy_all
u1 = User.create(:name => 'Rowena', :email => 'ro@ga.co', :password => 'chicken')
u2 = User.create(:name => 'Jonesy', :email => 'jonesy@ga.co', :password => 'chicken')
u3 = User.create(:name => 'Greg', :email => 'greg@ga.co', :password => 'chicken')
u4 = User.create(:name => 'Isabelle', :email => 'belle@ga.co', :password => 'chicken')
puts "#{ User.count } users created."


Attendee.destroy_all
a1 = Attendee.create
a2 = Attendee.create
a3 = Attendee.create
a4 = Attendee.create
puts "#{ Attendee.count } attendees attending events"

Checklist.destroy_all
c1 = Checklist.create(:todoList => "Pack a toothbrush, Check phone is charged, Buy snacks")
c2 = Checklist.create(:todoList => "Pack an extra jacket, bring a DVD")
c3 = Checklist.create(:todoList => "Buy new boots, Go to the BWS")
c4 = Checklist.create(:todoList => "Buy a swimming cossie, pack sunscreen")
puts "#{ Checklist.count } checklists created"

Trip.destroy_all
t1 = Trip.create(:start => "2021-10-21", :end => "2021-10-31",:location => "Orange")
t2 = Trip.create(:start => "2021-11-20", :end => "2021-11-24",:location => "Hunter Valley")
t3 = Trip.create(:start => "2021-12-24", :end => "2021-12-31",:location => "Dubbo")
t4 = Trip.create(:start => "2022-01-24" , :end => "2022-01-27",:location => "Byron Bay")
puts "#{ Trip.count } trips created"

####################

puts 'users and attendees'
u1.attendees << a1
u2.attendees << a2
u3.attendees << a3
u4.attendees << a4

puts 'Users and trips'
u2.trips << t1
u1.trips << t3
u3.trips << t2

puts 'Users and checklists'
u2.checklists << c1
u1.checklists << c3
u3.checklists << c2
