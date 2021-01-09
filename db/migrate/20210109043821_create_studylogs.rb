class CreateStudylogs < ActiveRecord::Migration[5.2]
  def change
    create_table :studylogs do |t|
      t.references :user, foreign_key: true
      t.integer :log
      t.datetime :start_time

      t.timestamps
    end
  end
end
