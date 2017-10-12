class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :race, :photos
  belongs_to :user
end
