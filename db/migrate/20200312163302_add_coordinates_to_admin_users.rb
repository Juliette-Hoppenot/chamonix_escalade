class AddCoordinatesToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :latitude, :float
    add_column :admin_users, :longitude, :float
  end
end
