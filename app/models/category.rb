class Category < ApplicationRecord
  has_many :articles
  #Liaison des tables avec clé étrangère
end
