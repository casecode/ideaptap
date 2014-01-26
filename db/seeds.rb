# Create seed data for testing database
Organization.destroy_all
User.destroy_all
Idea.destroy_all
Comment.destroy_all
Transaction.destroy_all


I18n.enforce_available_locales = false

organizations = [
  {name: "Case & Company", logo_url: "http://cdn-img.easylogo.cn/gif/26/26886.gif"},
  {name: "Laney Ltd", logo_url: "http://www.trademarkia.com/logo-images/laney-directional-drilling-co/laney-road-boring-wet-or-dry-77478905.jpg"}
  ]

users = [
 {name: "Case", admin: true, wallet: 200, email: "case@example.com", organization_id: "1", password: "password", password_confirmation: "password"},
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
  {title: "Spanish", category: "soc-and-net", short_desc: "All employees should learn Spanish.", coffer: 5, user_id: 1, long_desc: "Brilla, brilla, estrellita, ¡Cómo me pregunto cuál usted es! Encima sobre del mundo tan arriba, Como un diamante en el cielo. Brilla, brilla, estrellita, ¡Cómo me pregunto cuál usted es! Brilla, brilla, estrellita, ¡Cómo me pregunto cuál usted es! Encima sobre del mundo tan arriba, Como un diamante en el cielo. Brilla, brilla, estrellita, ¡Cómo me pregunto cuál usted es!"},
  {title: "German", category: "soc-and-net", short_desc: "All employees should learn German.", coffer: 7, user_id: 2, long_desc: "Twinkle, twinkle, little star, Wie ich frage mich, was du bist! Bis über die Welt so hoch, Wie ein Diamant im Himmel. Twinkle, twinkle, little star, Wie ich frage mich, was du bist! Twinkle, twinkle, little star, Wie ich frage mich, was du bist! Bis über die Welt so hoch, Wie ein Diamant im Himmel. Twinkle, twinkle, little star, Wie ich frage mich, was du bist!"},
  {title: "Chinese", category: "soc-and-net", short_desc: "All employees should learn Chinese.", coffer: 4, user_id: 5, long_desc: "一闪一闪小星星我多想知道你是什么！了世界如此之高，像天空中的钻石。一闪一闪小星星我多想知道你是什么！一闪一闪小星星我多想知道你是什么！了世界如此之高，像天空中的钻石。一闪一闪小星星我多想知道你是什么！"},
  {title: "Italian", category: "soc-and-net", short_desc: "All employees should learn Italian.", coffer: 0, user_id: 1, long_desc: "Twinkle, Twinkle, Little Star, Come mi chiedo che cosa sei! Sopra il mondo così in alto, come un diamante nel cielo. Twinkle, Twinkle, Little Star, Come mi chiedo che cosa sei! Twinkle, Twinkle, Little Star, Come mi chiedo che cosa sei! Sopra il mondo così in alto, come un diamante nel cielo. Twinkle, Twinkle, Little Star, Come mi chiedo che cosa sei!"},
  {title: "French", category: "soc-and-net", short_desc: "All employees should learn French.", coffer: 0, user_id: 4, long_desc: "Twinkle, Twinkle, petite étoile, comment je me demande ce que vous êtes! Au-dessus du monde tellement haut, Comme un diamant dans le ciel. Twinkle, Twinkle, petite étoile, comment je me demande ce que vous êtes! Twinkle, Twinkle, petite étoile, comment je me demande ce que vous êtes! Au-dessus du monde tellement haut, Comme un diamant dans le ciel. Twinkle, Twinkle, petite étoile, comment je me demande ce que vous êtes!"},
  {title: "Spain", category: "biz-dev", idea_support_url: "http://iaufrance.org/Content/Uploads/CMS/Images/barcelona-spain.jpg", short_desc: "We should open a branch office in Spain.", coffer: 0, user_id: 1, long_desc: "Brilla, brilla, estrellita, ¡Cómo me pregunto cuál usted es! Encima sobre del mundo tan arriba, Como un diamante en el cielo. Brilla, brilla, estrellita, ¡Cómo me pregunto cuál usted es! Brilla, brilla, estrellita, ¡Cómo me pregunto cuál usted es! Encima sobre del mundo tan arriba, Como un diamante en el cielo. Brilla, brilla, estrellita, ¡Cómo me pregunto cuál usted es!"},
  {title: "Germany", category: "biz-dev", idea_support_url: "http://www.brynmawr.edu/german/images/roemer.jpg", short_desc: "We should open a branch office in Germany.", coffer: 0, user_id: 2, long_desc: "Twinkle, twinkle, little star, Wie ich frage mich, was du bist! Bis über die Welt so hoch, Wie ein Diamant im Himmel. Twinkle, twinkle, little star, Wie ich frage mich, was du bist! Twinkle, twinkle, little star, Wie ich frage mich, was du bist! Bis über die Welt so hoch, Wie ein Diamant im Himmel. Twinkle, twinkle, little star, Wie ich frage mich, was du bist!"},
  {title: "China", category: "biz-dev", idea_support_url: "http://www.berea.edu/ast/wp-content/blogs.dir/8/files/2013/09/Yunnan-China.jpg", short_desc: "We should open a branch office in China.", coffer: 0, user_id: 5, long_desc: "一闪一闪小星星我多想知道你是什么！了世界如此之高，像天空中的钻石。一闪一闪小星星我多想知道你是什么！一闪一闪小星星我多想知道你是什么！了世界如此之高，像天空中的钻石。一闪一闪小星星我多想知道你是什么！"},
  {title: "Italy", category: "biz-dev", idea_support_url: "http://images.nationalgeographic.com/wpf/media-live/photos/000/210/cache/manarola-italy-coast_21080_990x742.jpg", short_desc: "We should open a branch office in Italy.", coffer: 4, user_id: 1, long_desc: "Twinkle, Twinkle, Little Star, Come mi chiedo che cosa sei! Sopra il mondo così in alto, come un diamante nel cielo. Twinkle, Twinkle, Little Star, Come mi chiedo che cosa sei! Twinkle, Twinkle, Little Star, Come mi chiedo che cosa sei! Sopra il mondo così in alto, come un diamante nel cielo. Twinkle, Twinkle, Little Star, Come mi chiedo che cosa sei!"},
  {title: "France", category: "biz-dev", idea_support_url: "http://www.glsvlsi.org/archive/glsvlsi13/paris_pic.jpg", short_desc: "We should open a branch office in France.", coffer: 0, user_id: 4, long_desc: "Twinkle, Twinkle, petite étoile, comment je me demande ce que vous êtes! Au-dessus du monde tellement haut, Comme un diamant dans le ciel. Twinkle, Twinkle, petite étoile, comment je me demande ce que vous êtes! Twinkle, Twinkle, petite étoile, comment je me demande ce que vous êtes! Au-dessus du monde tellement haut, Comme un diamant dans le ciel. Twinkle, Twinkle, petite étoile, comment je me demande ce que vous êtes!"},
  {title: "Recycle Glass!", category: "CSR", short_desc: "We should recycle more!", coffer: 0, user_id: 4, long_desc: "Catch! calls the Once-ler. He lets something fall. It's a Truffula Seed. It's the last one of all! You're in charge of the last of the Truffula Seeds. And Truffula Trees are what everyone needs. Plant a new Truffula. Treat it with care. Give it clean water. And feed it fresh air. Grow a forest. Protect it from axes that hack. Then the Lorax  and all of his friends may come back."},
  {title: "Recycle Paper!", category: "CSR", short_desc: "We should recycle more!", coffer: 0, user_id: 8, long_desc: "Catch! calls the Once-ler. He lets something fall. It's a Truffula Seed. It's the last one of all! You're in charge of the last of the Truffula Seeds. And Truffula Trees are what everyone needs. Plant a new Truffula. Treat it with care. Give it clean water. And feed it fresh air. Grow a forest. Protect it from axes that hack. Then the Lorax  and all of his friends may come back."},
  {title: "Recycle Cardboard!", category: "CSR", short_desc: "We should recycle more!", coffer: 0, user_id: 6, long_desc: "Catch! calls the Once-ler. He lets something fall. It's a Truffula Seed. It's the last one of all! You're in charge of the last of the Truffula Seeds. And Truffula Trees are what everyone needs. Plant a new Truffula. Treat it with care. Give it clean water. And feed it fresh air. Grow a forest. Protect it from axes that hack. Then the Lorax  and all of his friends may come back."},
  {title: "Recycle Cans!", category: "CSR", short_desc: "We should recycle more!", coffer: 0, user_id: 7, long_desc: "Catch! calls the Once-ler. He lets something fall. It's a Truffula Seed. It's the last one of all! You're in charge of the last of the Truffula Seeds. And Truffula Trees are what everyone needs. Plant a new Truffula. Treat it with care. Give it clean water. And feed it fresh air. Grow a forest. Protect it from axes that hack. Then the Lorax  and all of his friends may come back."},
  {title: "Ecycle !", category: "CSR", short_desc: "We should recycle more!", coffer: 0, user_id: 1, long_desc: "Catch! calls the Once-ler. He lets something fall. It's a Truffula Seed. It's the last one of all! You're in charge of the last of the Truffula Seeds. And Truffula Trees are what everyone needs. Plant a new Truffula. Treat it with care. Give it clean water. And feed it fresh air. Grow a forest. Protect it from axes that hack. Then the Lorax  and all of his friends may come back."},
  {title: "Employee of the Day !", category: "fin-and-ops", short_desc: "$1 Bonus!", coffer: 0, user_id: 7, long_desc: "Did you ever fly a kite in bed? Did you ever walk with ten cats on your head? Did you ever milk this kind of cow? Well, we can do it. We know how. If you never did, you should. These things are fun and fun is good."},
  {title: "Employee of the Week !", category: "fin-and-ops", short_desc: "$10 Bonus!", coffer: 0, user_id: 8, long_desc: "Did you ever fly a kite in bed? Did you ever walk with ten cats on your head? Did you ever milk this kind of cow? Well, we can do it. We know how. If you never did, you should. These things are fun and fun is good."},
  {title: "Employee of the Month !", category: "fin-and-ops", short_desc: "$100 Bonus!", coffer: 0, user_id: 2, long_desc: "Did you ever fly a kite in bed? Did you ever walk with ten cats on your head? Did you ever milk this kind of cow? Well, we can do it. We know how. If you never did, you should. These things are fun and fun is good."},
  {title: "Employee of the Year !", category: "fin-and-ops", short_desc: "$1,000 Bonus!", coffer: 0, user_id: 1, long_desc: "Did you ever fly a kite in bed? Did you ever walk with ten cats on your head? Did you ever milk this kind of cow? Well, we can do it. We know how. If you never did, you should. These things are fun and fun is good."},
]

# comments = [
#   {body: "Look, it's comment number 1", user_id: 1, idea_id: 2},
#   {body: "Look, it's comment number 2", user_id: 2, idea_id: 4},
#   {body: "Look, it's comment number 3", user_id: 1, idea_id: 1},
#   {body: "Look, it's comment number 4", user_id: 2, idea_id: 1},
# ]


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
    category: idea[:category],
    idea_support_url: idea[:idea_support_url],
    coffer: idea[:coffer],
    user_id: idea[:user_id]
  )
end

# comments.each do |comment|
#   Comment.create(
#     body: comment[:body],
#     user_id: comment[:user_id],
#     idea_id: comment[:idea_id]
#   )
# end

