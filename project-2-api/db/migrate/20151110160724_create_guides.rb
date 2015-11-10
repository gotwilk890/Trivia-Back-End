class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :name, null: false, index: { unique: true }

      t.timestamps null: false
    end
  end
end
