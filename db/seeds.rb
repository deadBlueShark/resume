5.times do
  topic = Topic.create(
    name: Faker::Book.genre
  )
  10.times do
    topic.blogs.create(
      title: Faker::Book.title,
      body: Faker::Lorem.paragraph
    )
  end
end

5.times do
  Skill.create(
    name: Faker::ProgrammingLanguage.name,
    percent: 50 + rand(50)
  )
end

9.times do
  portfolio = Portfolio.create(
    title: FFaker::Product.product,
    subtitle: FFaker::Vehicle.manufacturer_color,
    body: FFaker::Book.description,
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
  3.times do
    portfolio.technologies.create(
      name: Faker::ProgrammingLanguage.name
    )
  end
end
