class Photo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :camera
  belongs_to_active_hash :lenz
  belongs_to_active_hash :lenz_type
  belongs_to_active_hash :iso_speed
  belongs_to_active_hash :flash
  belongs_to_active_hash :white_balance

  validates :image, presence: true, unless: :was_attached?
  validates :name, presence: true, length: { maximum: 40 }

  belongs_to :user

  has_one_attached :image

  def was_attached?
    self.image.attached?
  end

end
