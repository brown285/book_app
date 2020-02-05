# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jrr = Author.create!(first_name: 'J.R.R.', last_name: 'Tolkien')
ia = Author.create!(first_name: 'Isaac', last_name: 'Asimov')
wg = Author.create!(first_name: 'William', last_name: 'Golding')
rj = Author.create!(first_name: 'Robert', last_name: 'Jordan')
bs = Author.create!(first_name: 'Brandon', last_name: 'Sanderson')

wot = BookSeries.create!(title: 'The Wheel of Time')
fdt = BookSeries.create!(title: 'Foundation Trilogy')

Book.create!(title: 'Lord of the Flies', pub_year: 1954, pages: 224, author: wg)
Book.create!(title: 'The Eye Of the World', pub_year: 1990, book_series: wot, pages: 702, author: rj)
Book.create!(title: 'The Great Hunt', pub_year: 1990, book_series: wot, pages: 599, author: rj)
Book.create!(title: 'The Dragon Reborn', pub_year: 1991, book_series: wot, pages: 545, author: rj)
Book.create!(title: 'The Shadow Rising', pub_year: 1992, book_series: wot, pages: 891, author: rj)
Book.create!(title: 'The Fires of Heaven', pub_year: 1993, book_series: wot, pages: 684, author: rj)
Book.create!(title: 'Lord Of Chaos', pub_year: 1994, book_series: wot, pages: 699, author: rj)
Book.create!(title: 'A Crown of Swords', pub_year: 1996, book_series: wot, pages: 635, author: rj)
Book.create!(title: 'The Path of Daggers', pub_year: 1998, book_series: wot, pages: 591, author: rj)
Book.create!(title: 'Winter\'s Heart', pub_year: 2000, book_series: wot, pages: 533, author: rj)
Book.create!(title: 'Crossroads of Twilight', pub_year: 2003, book_series: wot, pages: 681, author: rj)
Book.create!(title: 'Knife of Dreams', pub_year: 2005, book_series: wot, pages: 671, author: rj)

Book.create!(title: 'The Gathering Storm', pub_year: 2009, book_series: wot, pages: 766, author: bs)
Book.create!(title: 'Towers of Midnight', pub_year: 2010, book_series: wot, pages: 843, author: bs)
Book.create!(title: 'A Memory of Light', pub_year: 2013, book_series: wot, pages: 909, author: bs)

Book.create!(title: 'Foundation', pub_year: 1951, book_series: fdt, pages: 255, author: ia)
Book.create!(title: 'Foundation and Empire', pub_year: 1952, book_series: fdt, pages: 247, author: ia)
Book.create!(title: 'Second Foundation', pub_year: 1953, book_series: fdt, pages: 210, author: ia)
Book.create!(title: 'Foundation\'s Edge', pub_year: 1982, book_series: fdt, pages: 367, author: ia)




