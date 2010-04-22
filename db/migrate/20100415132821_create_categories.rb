class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :naam
      t.text :beschrijving

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
