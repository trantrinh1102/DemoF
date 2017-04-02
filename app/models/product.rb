class Product < ApplicationRecord
  mount_uploader :image, ImageUploader


  belongs_to :category

  has_many :comments
  has_many :order_items

  validates_processing_of :image
  validate :image_size_validation
  validates :name, :price, :category_id, presence: true

  private
  def image_size_validation
    if image.size > Settings.megabytes_image.megabytes
      errors[:image] << I18n.t("image_size")
    end
  end
end
