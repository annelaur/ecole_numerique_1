class CreateChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.references :classroom, null: false, foreign_key: true
      t.references :safe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
