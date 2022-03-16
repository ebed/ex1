class CreateWeathers < ActiveRecord::Migration[6.0]
  def change
    create_table :weathers do |t|
      t.references :city, null: false, foreign_key: true
      t.date :date
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
