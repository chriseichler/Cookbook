class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :instructions
      t.string :name
      t.integer :serving_size
      t.text :image_url
      t.integer :course
      t.text :cook_time

      # t.integer :cookbook_id
      t.belongs_to :cookbook # helpful for foreign keys

      t.timestamps
    end
  end
end
