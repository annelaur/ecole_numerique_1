class CreateHomeworks < ActiveRecord::Migration[7.0]
  def change
    create_table :homeworks do |t|
      t.string :category
      t.text :content
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
