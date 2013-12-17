class AddPointsPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :points, :decimal
  end
end
