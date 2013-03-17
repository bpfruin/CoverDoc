# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create email: "example@example.com",
	first_name: "Guy",
	last_name: "Person",
	phone: "#{rand(9000000000) +1000000000}",
	password: "example",
	password_confirmation: "example"



Specialty.create field: "Dermatology"
Specialty.create field: "General"
Specialty.create field: "General Surgery"
Specialty.create field: "Cardiology"
Specialty.create field: "Neurology"
Specialty.create field: "Hematology"
Specialty.create field: "Endocrinology"
Specialty.create field: "Pediatrics"
Specialty.create field: "Gastroenterology"
Specialty.create field: "Nephrology"
Specialty.create field: "Physiatry"
Specialty.create field: "Psychiatry"
Specialty.create field: "Rheumatology"

15.times do

  Post.create description: "I need a doctor to cover my practice.  I could go on and on...
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla laoreet scelerisque elit a rhoncus. Cras convallis egestas adipiscing. Ut tempor egestas dui et gravida. In vitae dapibus justo. Morbi quis nibh sapien. Duis a quam mauris. Morbi lacus ipsum, pretium ac tempor id, cursus a nibh. Integer eget purus orci. Aliquam eu lacus erat. Proin id augue dui, sit amet faucibus velit. Quisque rutrum rhoncus imperdiet. Fusce nisl sem, dictum mattis semper et, interdum nec lacus. Duis sit amet nibh erat, eu luctus orci. Sed pharetra nibh sit amet elit viverra a volutpat elit cursus. Cras ut arcu eu diam semper rhoncus non ac diam.

Ut fermentum ultricies vestibulum. Fusce rutrum, nibh in suscipit pulvinar, turpis velit mollis dui, ut dapibus tortor elit nec lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tempor molestie hendrerit. Praesent at magna nec velit pulvinar laoreet ac eu arcu. Etiam aliquam, elit sit amet sodales consequat, sem lorem lacinia ligula, id viverra dui sapien a orci. Nulla in risus augue, nec elementum tortor. Cras vestibulum auctor felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu porta magna. Integer pharetra, diam eget hendrerit dignissim, mauris leo consequat neque, a mollis elit odio molestie odio. Cras leo magna, rhoncus sit amet semper sit amet, fermentum quis quam.

Suspendisse potenti. Etiam eu tellus et odio laoreet iaculis nec ut mauris. Vestibulum in massa ac velit commodo pulvinar. Nam sit amet nisl velit. Quisque molestie ornare nisi, ac rhoncus risus consequat et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce dolor enim, volutpat quis bibendum non, porta id nisi.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce porta nibh sit amet mi porttitor sed ultricies nisi luctus. Nulla eget mi justo. Suspendisse turpis lectus, congue a gravida et, elementum at ipsum. Ut egestas euismod turpis, sed tincidunt enim condimentum sollicitudin. Nunc non mattis ligula. Mauris est felis, lacinia in lobortis nec, consequat sed dolor. Fusce pellentesque nunc est. Nunc in nisl orci. Sed velit justo, egestas sed volutpat ac, elementum quis nunc. Morbi tempus nibh in dui posuere placerat. Donec varius risus vitae nulla rhoncus hendrerit.

Morbi eget est ante. Ut eget est sit amet diam lacinia dignissim non ac tellus. Nam enim nunc, eleifend et sollicitudin nec, faucibus non dui. Cras condimentum, quam vitae pulvinar lacinia, quam libero condimentum enim, iaculis varius turpis lacus non nulla. Nulla malesuada auctor imperdiet. Aenean dapibus suscipit augue, quis elementum enim porttitor quis. Quisque arcu nulla, pretium quis suscipit a, ornare sed risus. Nullam at libero in libero suscipit adipiscing. Ut vitae urna vitae mi lobortis venenatis. Aliquam quis justo ut nisl malesuada dignissim.",
  	start_date: Date.today + 1,
  	end_date: Date.today + 8,
  	fee: "#{rand(90000) + 1000}",
  	location: "Foo",
  	user_id: 1

end



