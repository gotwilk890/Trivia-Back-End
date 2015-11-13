class AddUsersRefToGuide < ActiveRecord::Migration
  def change
    add_reference :guides, :user, index: true, foreign_key: true
  end
end
