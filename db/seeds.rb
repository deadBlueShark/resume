5.times do
  topic = Topic.create(
    name: FFaker::Book.genre
  )
  10.times do
    topic.blogs.create(
      title: FFaker::Book.title,
      body: FFaker::Book.description
    )
  end
end

5.times do
  Skill.create(
    name: FFaker::Skill.tech_skill,
    percent: 50 + rand(50)
  )
end

9.times do
  Portfolio.create(
    title: FFaker::Product.product,
    subtitle: FFaker::Vehicle.manufacturer_color,
    body: FFaker::Book.description,
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end
