class CreateGyms < ActiveRecord::Migration[6.1]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :founder
      t.string :description

      t.timestamps
    end
  end
end
