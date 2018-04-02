class AddAvatarToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :avatar, :string
  end
end
