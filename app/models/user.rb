class User < ApplicationRecord
  has_many :articles
  has_many :comments
  has_many :likes
  #Liaison des tables avec clé étrangère
end
