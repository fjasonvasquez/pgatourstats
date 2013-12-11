class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.references :player, index: true
      t.references :tournament, index: true
      t.integer :amount

      t.timestamps
    end
  end
end
