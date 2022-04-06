class PostImage < ApplicationRecord
  has_one_atttached :image
  belongs_to :user
end
