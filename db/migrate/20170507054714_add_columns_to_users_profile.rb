class AddColumnsToUsersProfile < ActiveRecord::Migration[5.0]
  def change

    add_column :users, :user_google, :string
    add_column :users, :user_facebook, :string
    add_column :users, :user_twitter, :string
    add_column :users, :user_linkedin, :string

  end
end
