class CreateKlasses < ActiveRecord::Migration[5.0]
  def change
    create_table :klasses do |t|
      t.string :subject
      t.references :student, foreign_key: true
      t.references :tutor, foreign_key: true

      t.timestamps
    end
  end
end
