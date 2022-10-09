class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :ingridients

      t.timestampsa
    end
  end
end
