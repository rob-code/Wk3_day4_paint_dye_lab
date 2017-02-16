require_relative( './../models/dye.rb' )
require_relative( './../models/paint.rb' )
require_relative( './../models/paint_dye.rb' )

require( 'pry' )

Dye.delete_all()
# Location.delete_all()
# User.delete_all()

dye1 = Dye.new({'name' => 'Cyan'})
dye2 = Dye.new({'name' => 'Magenta'})
dye3 = Dye.new({'name' => 'Yellow'})
dye4 = Dye.new({'name' => 'Key (Black)'})

dye1.save
dye2.save
dye3.save
dye4.save


# user1 = User.new({ 'name' => 'Samwise Gamgee' })
# user1.save()
# user2 = User.new({ 'name' => 'Gollum' })
# user2.save()

# location1 = Location.new({ 'category' => 'Attractions', 'name' => 'Mordor'})
# location1.save()
# location2 = Location.new({ 'category' => 'Places To Go', 'name' => 'Hobbiton'})
# location2.save()

# visit1 = Visit.new({ 'user_id' => user1.id, 'location_id' => location1.id, 'review' => '0 stars, far too hot'})
# visit1.save()
# visit2 = Visit.new({ 'user_id' => user2.id, 'location_id' => location1.id, 'review' => '5 stars, would visit again if I could'})
# visit2.save()
# visit3 = Visit.new({ 'user_id' => user1.id, 'location_id' => location2.id, 'review' => '4 stars, plenty of beer available'})
# visit3.save()

binding.pry
nil