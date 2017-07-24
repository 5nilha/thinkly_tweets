class Post < ApplicationRecord
  
  validates :comment, length:{maximum: 140}, presence: true
  
end
