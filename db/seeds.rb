# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(fullname: "Ryan Seit", email: "ryan@ryanseit.com", password_digest: "1234")
User.create(fullname: "Gina Shaffer", email: "gina@ginaseit.com", password_digest: "1234")

ryan = User.find_by(id: 1)
gina = User.find_by(id: 2)

Product.create(name: "Pullover", description: "Newly updated with a more relaxed fit. A go-to for casual coziness, this extra-comfy sweatshirt features soft n' toasty French terry cotton and a drawstring hood brightly lined with stripes of pride. Ribbing at the waistband and cuffs seals in warmth, and a kangaroo pocket provides a spot for heating up hands or storing essentials.", price: 68, category: "Apparel", img_1: "http://localhost:3001/images/apr-pullover-img1.png", img_2: "http://localhost:3001/images/apr-pullover-img2.png")
Product.create(name: "Roar", description: "A Mesozoic metalhead roars into a barely reachable mic on this white crew-neck PJ top. Ideal for low-key home days or a soothing snooze, our long-sleeved loungewear delivers a supersoft feel with stretch-blend cotton construction.", price: 36, category: "Apparel", img_1: "http://localhost:3001/images/apr-roar-img1.png", img_2: "http://localhost:3001/images/apr-roar-img2.png")
Product.create(name: "Technicolor", description: "Comfort, quality, durability. It's the only bra you'll ever need. Made from the same quality cotton as our famous underwear. This double layered low-intensity bra offers the comfort of a bralette with iconic Tomboy style. Full coverage fit means one less thing to worry about. (Now in technicolor.)", price: 25, category: "Bras", img_1: "http://localhost:3001/images/bra-technicolor-img1.png", img_2: "http://localhost:3001/images/bra-technicolor-img2.png")
Product.create(name: "Triangles", description: "A vibrant triangle collage proudly flies the flags for rockers and warriors of all identities. Comfort, quality, durability. It's the only bra you'll ever need. Made from the same quality cotton as our famous underwear. This double layered low-intensity bra offers the comfort of a bralette with iconic Tomboy style. Full coverage fit means one less thing to worry about.", price: 25, category: "Bras", img_1: "http://localhost:3001/images/bra-triangle-img1.png", img_2: "http://localhost:3001/images/bra-triangle-img2.png")
Product.create(name: "White", description: "Comfort, quality, durability. It's the only bra you'll ever need. Made from the same quality cotton as our famous underwear. This double layered low-intensity bra offers the comfort of a bralette with iconic Tomboy style. Full coverage fit means one less thing to worry about.", price: 25, category: "Bras", img_1: "http://localhost:3001/images/bra-white-img1.png", img_2: "http://localhost:3001/images/bra-white-img2.png")
Product.create(name: "Neon", description: "Neon palm trees splashed against Island Blue deliver vivid vibes straight outta Silver Lake in this collaboration with The L-Word: Generation Q. We took a classic and made it into a TomboyX icon, the first truly gender-neutral boxer brief. These essential Tomboy trunks pair quality cotton with just the right amount of stretch for a smooth, body-hugging fit.", price: 15, category: "Underwear", img_1: "http://localhost:3001/images/und-neon-img1.png", img_2: "http://localhost:3001/images/und-neon-img2.png")
Product.create(name: "Rainbow", description: "We took a classic and made it into a TomboyX icon, the first truly gender-neutral boxer brief. These essential Tomboy trunks pair quality cotton with just the right amount of stretch for a smooth, body-hugging fit. (Now in technicolor.)", price: 15, category: "Underwear", img_1: "http://localhost:3001/images/und-rainbow-img1.png", img_2: "http://localhost:3001/images/und-rainbow-img2.png")
Product.create(name: "Tropical", description: "A feral design, tropical flora and vibrant colors meet on these classic briefs, bringing wild style to the smooth-fitting design of soft stretch-blend cotton and signature stay-put waistband. Boxer briefs made for you.", price: 15, category: "Underwear", img_1: "http://localhost:3001/images/und-tropical-img1.png", img_2: "http://localhost:3001/images/und-tropical-img2.png")
Product.create(name: "Womxn", description: "In collaboration with visual artist Shanée Benjamin—the Womxn print is diverse, powerful, and beautiful, just like the real womxn who inspire our lives. We took a classic and made it into a TomboyX icon, the first truly gender-neutral boxer brief. These essential Tomboy trunks pair quality cotton with just the right amount of stretch for a smooth, body-hugging fit.", price: 15, category: "Underwear", img_1: "http://localhost:3001/images/und-womxn-img1.png", img_2: "http://localhost:3001/images/und-womxn-img2.png")


prod1 = Product.find_by(id: 1)
prod2 = Product.find_by(id: 2)
prod3 = Product.find_by(id: 3)
prod4 = Product.find_by(id: 4)
prod5 = Product.find_by(id: 5)
prod6 = Product.find_by(id: 6)
prod7 = Product.find_by(id: 7)
prod8 = Product.find_by(id: 8)
prod9 = Product.find_by(id: 9)

Order.create(total_amount: 0, user_id: 1)
Order.create(total_amount: 0, user_id: 2)
Order.create(total_amount: 0, user_id: 1)

order1 = Order.find_by(id: 1)