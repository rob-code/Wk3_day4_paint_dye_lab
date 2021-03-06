require_relative( './../models/dye.rb' )
require_relative( './../models/paint.rb' )
require_relative( './../models/paint_dye.rb' )

require( 'pry' )

Dye.delete_all()
Paint.delete_all()
PaintDye.delete_all()

dye1 = Dye.new({'name' => 'Cyan'})
dye2 = Dye.new({'name' => 'Magenta'})
dye3 = Dye.new({'name' => 'Yellow'})
dye4 = Dye.new({'name' => 'Key (Black)'})

dye1.save
dye2.save
dye3.save
dye4.save

paint1 = Paint.new({'name' => 'Red'})
paint2 = Paint.new({'name' => 'Green'})
paint3 = Paint.new({'name' => 'Blue'})
paint4 = Paint.new({'name' => 'Mud Black'})

paint1.save
paint2.save
paint3.save
paint4.save


paint_dye1 = PaintDye.new({'dye_id' => dye2.id, 'paint_id' => paint1.id, 'percentage' => 50 })
paint_dye2 = PaintDye.new({'dye_id' => dye3.id, 'paint_id' => paint1.id, 'percentage' => 50 })

paint_dye3 = PaintDye.new({'dye_id' => dye1.id, 'paint_id' => paint2.id, 'percentage' => 50 })
paint_dye4 = PaintDye.new({'dye_id' => dye3.id, 'paint_id' => paint2.id, 'percentage' => 50 })

paint_dye5 = PaintDye.new({'dye_id' => dye1.id, 'paint_id' => paint3.id, 'percentage' => 50 })
paint_dye6 = PaintDye.new({'dye_id' => dye2.id, 'paint_id' => paint3.id, 'percentage' => 50 })

paint_dye7 = PaintDye.new({'dye_id' => dye1.id, 'paint_id' => paint4.id, 'percentage' => 33 })
paint_dye8 = PaintDye.new({'dye_id' => dye2.id, 'paint_id' => paint4.id, 'percentage' => 33 })
paint_dye9 = PaintDye.new({'dye_id' => dye3.id, 'paint_id' => paint4.id, 'percentage' => 33 })


paint_dye1.save
paint_dye2.save
paint_dye3.save
paint_dye4.save
paint_dye5.save
paint_dye6.save
paint_dye7.save
paint_dye8.save
paint_dye9.save



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