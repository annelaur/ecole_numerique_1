class CreateSaves < ActiveRecord::Migration[7.0]
  def change
    create_table :saves do |t|
      t.string :file_name

      t.timestamps
    end
  end
end
