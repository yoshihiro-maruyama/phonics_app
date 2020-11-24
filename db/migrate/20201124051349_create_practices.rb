class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :name
      t.string :image
      t.string :sound
      t.references :alphabet, foreign_key: true

      t.timestamps
    end
  end
end
