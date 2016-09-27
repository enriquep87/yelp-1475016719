class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :city_id
      t.integer :neighborhood_id
      t.string :tags
      t.string :description
      t.string :address
      t.string :website
      t.string :cover_photo

      t.timestamps

    end
  end
end
