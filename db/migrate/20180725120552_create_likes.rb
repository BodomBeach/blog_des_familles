class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.boolean :state, :default => false
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
