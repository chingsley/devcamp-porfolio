User.create!(
  email: "admin@test.com",
  password: "santo domingo",
  password_confirmation: "santo domingo",
  name: "Admin User",
  roles: "site_admin"
)

User.create!(
  email: "regularUser@test.com",
  password: "santo domingo",
  password_confirmation: "santo domingo",
  name: "Regular User",
)

puts "2 Users created, 1 admin user and 1 regular user"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic+1}"
  )
end

puts "3 Topics created"

10.times do |i|
  Blog.create!(
    title: "My Blog Post #{i}",
    body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

my_skills = ["Javascript", "Ruby", "React and Redux", "nodeJS", "HTML"]
5.times do |i|
  Skill.create!(
    title: "#{my_skills[i]}",
    percent_utilized: 4 * (i + 1)
  )
end
puts "5 skills createe"

8.times do |i|
  Portfolio.create!(
    title: "Portfolio title #{i+1}",
    subtitle: "Ruby on Rails",
    body: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200",
  )
end
1.times do |i|
  Portfolio.create!(
    title: "Portfolio title #{i+1}",
    subtitle: "Angular",
    body: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200",
  )
end
puts "9 portfolio items created"

# 3.times do |indx|
#   Technology.create!(
#     name: "Technology #{indx + 1}",
#     portfolio_id: Portfolio.last.id
#   )
# end
#----------- OR -----------------
3.times do |indx|
  Portfolio.last.technologies.create!(
    name: "Technology #{indx + 1}"
  )
end
puts "3 technologies created"