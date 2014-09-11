# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User anlegen beim Datenbank erstellen
User.create! email: 'test1@test.de', username: 'Gamy', password: '12345678', moderator: true
User.create! email: 'test@test1.de', username: 'TestUser', password: '12345678'

#Film anlegen beim Datenbank erstellen
Movie.create title: 'Armee der Finsternis',           year: '1992', actor: '', m_genre: 'Sci-Fi', genre: '', remote_avatar_url: 'http://4.bp.blogspot.com/-H9TWAFtRTfc/UY6EdFTovpI/AAAAAAAAA3Q/mCknhF-9RjI/s1600/army_of_darkness_poster.jpg'
Movie.create title: 'Guardians of the Galaxy',        year: '2014', actor: 'Chris Pratt, Zoe Saldana, Lee Pace, Dave Bautista', m_genre: 'Sci-Fi', genre: 'Sci-Fi, Action', remote_avatar_url: 'http://imageserver.moviepilot.com/guardians-of-the-galaxy-back-at-number-1-in-the-u-s-box-office-b89a9cc8-7734-4ebc-9d7a-6d0a760b5596.jpeg'
Movie.create title: 'Der Pate',                       year: '1972', actor: 'Al Pacino, Marlon Brando', m_genre: 'Krimi', genre: 'Krimi, Drama', remote_avatar_url: 'http://ww2.sinaimg.cn/large/77563996jw1efh6f1f13gj20ve18fdrm.jpg'
Movie.create title: 'Iron Man',                       year: '2008', actor: 'Robert Downey Jr., Jeff Bridges, Gwyneth Paltrow', m_genre: 'Action', genre: 'Action, Abenteuer, Sci-Fi', remote_avatar_url: 'http://www.filmempfehlung.com/_bilder/poster/tt0371746_iron_man_2.jpg'
Movie.create title: 'Krieg der Sterne',               year: '1977', actor: 'Mark Hamill, Harrison Ford, Carrie Fisher, Peter Cushing, Alec Guinness', m_genre: 'Sci-Fi', genre: 'Sci-Fi, Action, Abenteuer, Fantasy', remote_avatar_url: 'http://images.gamestar.de/images/idgwpgsgp/bdb/2409306/600x.jpg'
Movie.create title: '2001: Odyssee im Weltraum',      year: '1968', actor: 'Keir Dullea, Gary Lockwood, William Sylvester', m_genre: 'Mystery', genre: 'Mystery, Sci-Fi', remote_avatar_url: 'http://www.filmposter-archiv.de/filmplakat/1968/2001.jpg'
Movie.create title: 'Jäger des verlorenen Schatzes',  year: '1981', actor: 'Harrison Ford, Karen Allen', m_genre: 'Abenteuer', genre: 'Abenteuer, Action', remote_avatar_url: 'http://www.ernieputto.de/filmstuff/jaeger/jaeger_des_verlorenen_schatzes_poster3.jpg'
Movie.create title: 'Aufstieg und Fall der Fenster',  year: '1985', actor: 'Bill Gates', m_genre: 'Bullshit', genre: 'Bullshit, Comedy'
