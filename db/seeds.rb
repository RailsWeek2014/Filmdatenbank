# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
['registered', 'moderator'].each do |role|
  Role.find_or_create_by({name: role})
end


User.create! email: 'dennislichtenthaeler@t-online.de', username: 'Gamy', password: '12345678', moderator: true
Movie.create title: 'Armee der Finsternis', year: '1992', remote_avatar_url: 'http://4.bp.blogspot.com/-H9TWAFtRTfc/UY6EdFTovpI/AAAAAAAAA3Q/mCknhF-9RjI/s1600/army_of_darkness_poster.jpg'