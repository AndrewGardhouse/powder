class ChangePasswordDigestDataType < ActiveRecord::Migration
  def change
    change_column :users, :password_digest, :text
  end
end
