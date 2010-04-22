class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.timestamps
      t.string :last_name, :null => false
      t.string :first_name, :null => false
      t.string :username, :null => false
      t.string :adres, :null => false
      t.string :post_code, :null => false
      t.string :plaats, :null => false
      t.integer :tel_nummer, :null => false
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :persistence_token, :null => false
      t.integer :login_count, :default => 0, :null => false
      t.datetime :last_request_at
      t.datetime :last_login_at
      t.datetime :current_login_at      
      t.string :last_login_ip
      t.string :current_login_ip
    end
  end

  def self.down
    drop_table :users
  end
end
