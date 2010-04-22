class CreateBedrijfs < ActiveRecord::Migration
  def self.up
    create_table :bedrijfs do |t|
      t.string :naam
      t.string :adres
      t.string :postcode
      t.string :plaats
      t.integer :telnr
      t.integer :faxnr
      t.string :webadres
      t.integer :kvk,  :limit   => 16
      t.string :status
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :bedrijfs
  end
end
