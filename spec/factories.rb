Factory.define :post do |p|
  p.name Faker::Lorem.words.join("_")
  p.title Faker::Lorem.sentence
  p.content Faker::Lorem.paragraphs
end
