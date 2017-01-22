class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :location
      t.string :name
      t.references :developer, foreign_key: true
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
