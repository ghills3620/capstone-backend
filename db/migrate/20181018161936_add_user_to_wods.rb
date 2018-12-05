class AddUserToWods < ActiveRecord::Migration[5.2]
  def change
    add_reference :wods, :user, foreign_key: true
  end
end
