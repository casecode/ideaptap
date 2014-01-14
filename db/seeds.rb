# Create seed data for testing database

User.destroy_all
Idea.destroy_all
Comment.destroy_all
puts "Destroyed all users, ideas and comments."

I18n.enforce_available_locales = false

# users = [
#  {name: "Jim", admin: false, wallet: 75, email: "jim@example.com", encrypted_password: "password"},
#  {name: "Bob", admin: false, wallet: 50, email: "bob@example.com", encrypted_password: "password"},
#  {name: "Case", admin: false, wallet: 25, email: "case@example.com", encrypted_password: "password"},
#  {name: "LaneLane", admin: true, wallet: 100, email: "laney@email.com", encrypted_password: "password"}
# ]

ideas = [
  {title: "idea1", short_desc: "so short", long_desc: "so long", coffer: 25, user_id: 2},
  {title: "idea2", short_desc: "too short", long_desc: "too long", coffer: 50, user_id: 1},
  {title: "idea3", short_desc: "way too short", long_desc: "way too long", coffer: 80, user_id: 3},
  {title: "idea4", short_desc: "like totally short", long_desc: "like totally long", coffer: 25, user_id: 2},
]

comments = [
  {body: "Look, it's comment number 1", user_id: 3, idea_id: 2},
  {body: "Look, it's comment number 2", user_id: 2, idea_id: 4},
  {body: "Look, it's comment number 3", user_id: 4, idea_id: 1},
  {body: "Look, it's comment number 4", user_id: 2, idea_id: 1},
]


# users.each do |user|
#   User.create(
#     name: user[:name],
#     admin: user[:admin],
#     wallet: user[:wallet],
#     email: user[:email]
#   )
# end

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