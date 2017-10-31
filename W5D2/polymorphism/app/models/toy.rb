class Toy < ApplicationRecord
  belongs_to :toyable, polymorphic: true
end
