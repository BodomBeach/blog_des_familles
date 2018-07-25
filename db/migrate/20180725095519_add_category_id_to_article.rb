class AddCategoryIdToArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :category, foreign_key: true
    #cette ligne lie les tables articles et categories
    #par une clé étrangère dans articles
  end
end
