user = User.new
user.email = 'test@test.com'
user.password = 'qwe123bnm'
user.password_confirmation = 'qwe123bnm'
user.save!

event = Myevent.new
event.name = 'name 1'
event.event_date = '10/10/2003'
event.user_id = user.id
event.save!

category = Category.new
category.name = "category 1"
category.save!