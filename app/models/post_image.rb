class PostImage < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  belongs_to :post_image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :shop_name, presence: true
  validates :image, presence: true
  
  def get_image
   unless image.attached?
     file_path = Rials.root.join('app/assets/image/no_image.jpg')
     image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpg')
   end
   image
  end
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  
end
