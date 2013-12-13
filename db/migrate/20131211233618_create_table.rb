class CreateTable < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :username
      t.string :password
      t.string :email
    end
  end
end
