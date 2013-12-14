class AddTournamentToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :tournament, :string
  end
end
