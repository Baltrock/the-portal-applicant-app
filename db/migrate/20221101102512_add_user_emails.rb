class AddUserEmails < ActiveRecord::Migration[7.0]
  def change
    add_column :information_forms, :email, :string
  end
end
