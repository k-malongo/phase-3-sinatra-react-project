puts "🌱 Seeding spices..."
Category.create(category: "clothing")
Category.create(category: "laptop")
Category.create(category: "electronics")
Category.create(category: "sporting")
Category.create(category: "shoes")

Product.create(
    title: "Dam Bells",
    price: "40000",
    description: "great",
    category_id: 1,
    image: "https://images.unsplash.com/photo-1570829460005-c840387bb1ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    rating: 2.5
)
Review.create(
    user_id: 1,
    product_id: 1,
    comment: "hello",
    user_name: "kelvin"
)
Review.create(
    user_id: 2 ,
    product_id: 2,
    comment: "hello 2",
    user_name: "kevo 2"
)
# Seed your database here

puts "✅ Done seeding!"
