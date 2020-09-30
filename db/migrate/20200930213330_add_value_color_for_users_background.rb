class AddValueColorForUsersBackground < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :background, :string
  end
end
