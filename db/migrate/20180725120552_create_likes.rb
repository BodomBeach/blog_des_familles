class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true
      #la table like a deux clés étrangères user_id et article_id
      t.timestamps
    end
  end
end
