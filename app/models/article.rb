class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true
  #optional: true: signifie que le seed pourra remplir la colonne category_id
  #même si category n'existe pas
  has_many :likes
  has_many :comments

end
