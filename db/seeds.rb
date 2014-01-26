# Create seed data for testing database

User.destroy_all
Idea.destroy_all
Comment.destroy_all
puts "Destroyed all users, ideas and comments."

I18n.enforce_available_locales = false

organizations = [
  {name: "Case & Company", logo_url: "http://en.wikipedia.org/wiki/Case_Corporation"},
  {name: "Laney Ltd", logo_url: "http://www.laney.co.uk/"}
  ]

users = [
 {name: "Case", admin: true, wallet: 500, email: "case@example.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Candy", admin: false, wallet: 100, email: "candy@example.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Carl", admin: false, wallet: 100, email: "carl@example.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Cindy", admin: false, wallet: 100, email: "cindy@email.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Charlie", admin: false, wallet: 100, email: "charlie@email.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Carlos", admin: false, wallet: 100, email: "carlos@email.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Carrey", admin: false, wallet: 100, email: "carrey@email.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Champ", admin: false, wallet: 100, email: "champ@email.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Charlette", admin: false, wallet: 100, email: "charlette@email.com", organization_id: "1", password: "password", password_confirmation: "password"},
 {name: "Laney", admin: true, wallet: 100, email: "laney@email.com", organization_id: "2", password: "password", password_confirmation: "password"},
 {name: "Lenard", admin: false, wallet: 100, email: "lenard@email.com", organization_id: "2", password: "password", password_confirmation: "password"}
]

ideas = [
  {title: "idea1", short_desc: "so short", long_desc: "so long", coffer: 25, user_id: 1},
  {title: "idea2", short_desc: "too short", long_desc: "too long", coffer: 50, user_id: 1},
  {title: "idea3", short_desc: "way too short", long_desc: "way too long", coffer: 80, user_id: 1},
  {title: "idea4", short_desc: "like totally short", long_desc: "like totally long", coffer: 25, user_id: 1},
]

comments = [
  {body: "Look, it's comment number 1", user_id: 1, idea_id: 2},
  {body: "Look, it's comment number 2", user_id: 2, idea_id: 4},
  {body: "Look, it's comment number 3", user_id: 1, idea_id: 1},
  {body: "Look, it's comment number 4", user_id: 2, idea_id: 1},
]


organizations.each do |organization|
  Organization.create(
    name: organization[:name],
    logo_url: organization[:logo_url]
    )
end

users.each do |user|
  User.create(
    name: user[:name],
    admin: user[:admin],
    wallet: user[:wallet],
    email: user[:email],
    organization_id: user[:organization_id],
    password: user[:password],
    password_confirmation: user[:password_confirmation]
  )
end

ideas.each do |idea|
  Idea.create(
    title: idea[:title],
    short_desc: idea[:short_desc],
    long_desc: idea[:long_desc],
    coffer: idea[:coffer],
    user_id: idea[:user_id]
  )
end

comments.each do |comment|
  Comment.create(
    body: comment[:body],
    user_id: comment[:user_id],
    idea_id: comment[:idea_id]
  )
end

puts "Create 4 new users, 4 new ideas, and 4 new comments."