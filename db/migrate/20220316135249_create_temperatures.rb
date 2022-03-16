class CreateTemperatures < ActiveRecord::Migration[6.0]
  def change
    create_table :temperatures do |t|
      t.float :temp
      t.references :weather, null: false, foreign_key: true

      t.timestamps
    end
  end
end