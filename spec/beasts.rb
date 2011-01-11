Summoner.prepare :post do |p|
  p.name Faker::Lorem.words.join("_")
  p.title Faker::Lorem.sentence
  p.content Faker::Lorem.paragraphs
end
Summoner.prepare :user do |u|
  u.login Faker::Internet.user_name
  u.email Faker::Internet.email
  u.password "secret"
  u.password_confirmation "secret"
end
