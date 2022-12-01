class AddReferencesToSaves < ActiveRecord::Migration[7.0]
  def change
    add_reference :saves, :child, foreign_key: true;
  end
end
