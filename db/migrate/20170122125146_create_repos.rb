class CreateRepos < ActiveRecord::Migration[5.0]
  def change
    create_table :repos do |t|
      t.string :url
      t.string :comment
      t.references :developer, foreign_key: true
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
