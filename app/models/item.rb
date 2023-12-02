class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :prefecture
  belongs_to :sales_status
  belongs_to :scheduled_delivery
  belongs_to :shipping_fee_status

  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 300, less_than: 9_999_999 }

  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :sales_status_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :shipping_fee_status_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :scheduled_delivery_id, numericality: { other_than: 1, message: "can't be blank" }

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    image.attached?
  end
end
