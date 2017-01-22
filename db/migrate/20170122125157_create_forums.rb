class CreateForums < ActiveRecord::Migration[5.0]
  def change
    create_table :forums do |t|
      t.string :url
      t.text :post
      t.references :developer, foreign_key: true
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
