class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.text :ingredients
      t.text :directions


      t.timestamps
    end
end

end



# Recipe.create(title: "Chicken Lover", description: "Yummy chicken veggie recipe", ingredients: "1.Two containers of chicken liver 2. 8+ lb chicken breast 3.Three peppers( Red, yellow, orange) 4. One bunch spinach 5. One can unsalted peas 6. One can unsalted green beans 7. One can kidney beans 8. One bag of blueberries 9. 3.5lb brown rice 10. Six eggs 11. Four bananas", directions: "Preheat the oven to 360 Degrees, bring two pots of water to a boil(or use same pot and boil veggies and rice at seperate times), put the chicken and chicken liver in the oven for one hour or unil the chicken is fully cooked, cut up the peppers, put the spinach, peppers, kidney beans, peas, green beans in the water to boil for 45 minutes. Put rice in 7 cups of boiling water and let simmer for 45 minuytes or until rice is soft. After the vegetables are cooked, strain the water out and use the same pot to cook the eggs, keep the egg shells for later. After the rice, vegetables, eggs and chicken finish cooking combine them all into a container along with the bananas, blueberries, and egg shells. Mix, then once it is cooled off it is good to serve.")
