class CreateSigns < ActiveRecord::Migration[7.0]
  def change
    create_table :signs do |t|
      t.string :document_name
      t.boolean :signed, default: false
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
