5.times do
  topic = Topic.create(name: Faker::Book.genre)

  10.times do
    topic.blogs.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
  end
end

5.times do
  Skill.create(name: Faker::ProgrammingLanguage.name, percent: rand(50..100))
end

9.times do
  portfolio = Portfolio.create(
    title: FFaker::Product.product,
    subtitle: FFaker::Vehicle.manufacturer_color,
    body: FFaker::Book.description
  )

  3.times do
    portfolio.technologies.create(
      name: Faker::ProgrammingLanguage.name
    )
  end
end
