# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed
  # Quote.destroy_all
  # Show.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_shows_and_quotes
  end

  def generate_shows_and_quotes

    show = Show.create!(name: "Buffy the Vampire Slayer")
    37.times do |i|
      quote = Quote.create!(
        quotation: Faker::TvShows::Buffy.unique.quote,
        show_id: show.id
      )
      puts "Quote #{i} for show #{show.name}: '#{quote.quotation}'."

    end


  end
end

Seed.begin

# # below code needs tweaking
# class Seed
#   # Show.destroy_all
#   # Quote.destroy_all
#
#   def initialize
#     @show_list = ["BojackHorseman","Buffy", "DrWho", "DumbAndDumber", "FamilyGuy", "Friends", "GameOfThrones", "HeyArnold", "HowIMetYourMother", "MichaelScott", "NewGirl", "RickAndMorty", "RuPaul", "Seinfeld", "SiliconValley", "Simpsons", "SouthPark", "Stargate", "StrangerThings", "TheExpanse", "TheFreshPrinceOfBelAir", "TheITCrowd", "TwinPeaks", "VentureBros"]
#   end
#
#   def self.begin
#     seed = Seed.new
#     seed.generate_shows_and_quotes
#   end
#
#   def generate_shows_and_quotes
#     @show_list.each do |tvshow|
#       show = Show.create!(name: tvshow)
#       20.times do |i|
#         quote = Quote.create!(
#           quotation: Faker::TvShows::tvshow.unique.quote,
#           # the issue is figuring out how to allow tvshow to extend the @show_list
#           show_id: show.id
#         )
#         puts "Quote #{i} for show #{tvshow}: '#{quote.quotation}'."
#       end
#     end
#
#
#   end
# end
#
# Seed.begin
