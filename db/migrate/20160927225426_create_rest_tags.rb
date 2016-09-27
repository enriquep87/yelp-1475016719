class CreateRestTags < ActiveRecord::Migration
  def change
    create_table :rest_tags do |t|
      t.integer :restaurant_id
      t.integer :tag_id

      t.timestamps

    end
  end
end
