class AddAvatarToEmails < ActiveRecord::Migration[8.0]
  def change
    add_column :emails, :avatar, :string
  end
end
