class AddAvailableToAvailable < ActiveRecord::Migration
  def change
    add_column :availables, :available, :string
  end
end
