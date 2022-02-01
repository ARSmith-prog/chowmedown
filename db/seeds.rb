
10.times do
  Recipe.create title: Faker:: Commerce.product_name,
      description:Faker:: Commerce.product_name,
      ingredients:Faker:: Commerce.product_name,
      directions: Faker:: Commerce.product_name

    end
