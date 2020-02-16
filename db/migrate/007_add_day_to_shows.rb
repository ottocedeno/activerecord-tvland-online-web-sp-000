class AddDayToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :catchphrase, :string
  end

end
