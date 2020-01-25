class ChangeSessionToken < ActiveRecord::Migration[5.2]
  def change
    remove_index :users, :session_token
    remove_column :users, :session_token
  end
end
