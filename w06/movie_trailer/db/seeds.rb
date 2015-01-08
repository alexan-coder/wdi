# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
Trailer.destroy_all
Character.destroy_all

Movie.create([
  { title: "Jurassic World", year: 2015, poster_url: "http://ia.media-imdb.com/images/M/MV5BMjMyNjI3ODQyNV5BMl5BanBnXkFtZTgwNDM5NTk5MjE@._V1_SX214_AL_.jpg", released: false },
  { title: "Back to the Future", year: 1985, poster_url: "http://upload.wikimedia.org/wikipedia/en/d/d2/Back_to_the_Future.jpg", released: true },
  { title: "Citizen Kane", year: 1941, poster_url: "http://upload.wikimedia.org/wikipedia/en/c/ce/Citizenkane.jpg", released: true }
])

Character.create([
  { name: "Owen", photo_url: "http://ia.media-imdb.com/images/M/MV5BMTg3NTU3NzE5MF5BMl5BanBnXkFtZTgwMjU1MjQ1MzE@._V1._CR513,0,1021,1021_SS90_.jpg", movie_id: Movie.first.id },
  { name: "Claire", photo_url: "http://ia.media-imdb.com/images/M/MV5BMTYzNjE0NjM2OV5BMl5BanBnXkFtZTgwMTU1MjQ1MzE@._V1_SY100_CR50,0,100,100_AL_.jpg", movie_id: Movie.first.id },
  { name: "T. Rex", photo_url: "http://img.ksl.com/slc/2506/250638/25063843.jpg", movie_id: Movie.first.id },
  { name: "The Doc", photo_url: "http://deathensemble.com/blog/wp-content/uploads/2013/08/Christopher-Lloyd-as-Doc-Brown.jpg", movie_id: Movie.second.id },
  { name: "Marty", photo_url: "https://pbs.twimg.com/profile_images/1234618042/MartyMcfly.jpg", movie_id: Movie.second.id },
  { name: "Biff", photo_url: "http://upload.wikimedia.org/wikipedia/en/1/15/BiffTannenBackToTheFuture1985.jpg", movie_id: Movie.second.id },
  { name: "Charles Foster Kane", photo_url: "http://images.forbes.com/media/2012/04/18/charles-foster-kane_197x282.jpg", movie_id: Movie.third.id },
  { name: "Jedediah Leland", photo_url: "http://dvdtoile.com/ARTISTES/2/2550.jpg", movie_id: Movie.third.id },
  { name: "Dorothy Comingore", photo_url: "http://www.zuguide.com/image/Dorothy-Comingore-Citizen-Kane.3.jpg", movie_id: Movie.third.id }
])

Trailer.create([
  { title: "Long Jurassic World trailer", embed_code: "SCl30dmIDFM", movie_id: Movie.first.id },
  { title: "Short Jurassic World trailer", embed_code: "RFinNxS5KN4", movie_id: Movie.first.id },
  { title: "Back to the Future theatrical trailer", embed_code: "qvsgGtivCgs", movie_id: Movie.second.id },
  { title: "Michael J. Fox is awesome", embed_code: "2SrV13F3x7Y", movie_id: Movie.second.id },
  { title: "Citizen Kane theatrical trailer", embed_code: "zyv19bg0scg", movie_id: Movie.third.id },
  { title: "Rosebud scene", embed_code: "Q3hfQ2IOc8s", movie_id: Movie.third.id }
])