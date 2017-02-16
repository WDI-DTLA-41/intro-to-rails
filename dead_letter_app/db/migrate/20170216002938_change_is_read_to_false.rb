class ChangeIsReadToFalse < ActiveRecord::Migration[5.0]
  def change
    change_table :letters do |l|
      remove_column :letters, :is_read
      l.boolean :is_read, :default => false
    end
  end
end
