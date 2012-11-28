class CreateAvailables < ActiveRecord::Migration
  def change
    create_table :availables do |t|
      t.string :name
      t.datetime :begin_at

      t.timestamps
    end
  end
end
