class House < ApplicationRecord 
  validates :house_name, presence: true 

  has_many(
    :person, 
    class_name: 'Person',
    foreign_key: :house_id, 
    primary_key: :id 
  )
end