class AddDefaultValueColorForUsersBackground < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :background, :string, default: '#005a55'
  end
end
