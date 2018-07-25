class Like < ApplicationRecord
  belongs_to :user
  belongs_to :article
  #Liaison des tables avec clé étrangère
end
