class RemoveReferencesFromChildren < ActiveRecord::Migration[7.0]
  def change
    remove_reference :children, :safe, index:true, foreign_key: true
  end
end
