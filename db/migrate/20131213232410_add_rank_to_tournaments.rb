class AddRankToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :rank, :decimal
  end
end
