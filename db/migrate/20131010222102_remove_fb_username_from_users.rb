class RemoveFbUsernameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :fb_username
  end
end
