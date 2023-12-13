class OrderForm
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :prefecture_id, :city, :street_number, :building, :telephone_number, :token
  
  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
  validates :prefecture_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :city, presence: true
  validates :street_number, presence: true
  validates :building, presence: true
  validates :telephone_number, format: { with: /\A[0-9]{11}\z/, message: 'is invalid' }
  validates :token, presence: true

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(order_id: order.id, postal_code: postal_code, prefecture_id: prefecture_id, city: city, street_number: street_number, building: building, telephone_number: telephone_number)
  end
end
