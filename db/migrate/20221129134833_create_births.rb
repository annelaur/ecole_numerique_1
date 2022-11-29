class CreateBirths < ActiveRecord::Migration[7.0]
  def change
    create_table :births do |t|
      t.references :parent_user, null: false, foreign_key: true
      t.references :child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
