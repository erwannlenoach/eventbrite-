require 'faker'


10.times do 
    Event.create(
       start_date: Faker::Date.between(from: 2.days.ago, to: Date.today), 
       duration: Faker::Number.between(from: 1, to: 100),
       title: Faker::TvShows::BreakingBad.episode,
       description: Faker::Lorem.sentence(word_count: 50),
       price: Faker::Number.between(from: 1, to: 100),
       location: Faker::WorldCup.team,
       admin_id: User.all.sample.id
        )
end 

10.times do 
    User.create(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        email: Faker::Internet.email,
        description: Faker::TvShows::RickAndMorty,
        password: Faker::String.random(length: 8)
        )
end 


