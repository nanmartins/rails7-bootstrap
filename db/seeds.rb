# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

category = 1
example = 1

5.times do
  Category.create(category_name: "Category #{category}")

  5.times do
    Product.create(
        category_id: category,
        name: "Name #{example}",
        price: example,
        image: "image #{example}",
        size: "size #{example}",
        color: "blue green red orange black",
        description: "description #{example}"
      )
    example += 1
  end

  category += 1
end
