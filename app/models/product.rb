# == Schema Information
#
# Table name: products
#
#  id                    :integer          not null, primary key
#  description           :text(65535)      not null
#  name                  :string(255)      not null
#  price                 :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  category_id           :integer
#  derivery_day_id       :integer
#  derivery_fee_payer_id :integer
#  product_condition_id  :integer
#  ship_from_location_id :integer
#  size_id               :integer          not null
#  user_id               :integer
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_size_id      (size_id)
#  index_products_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (size_id => sizes.id)
#  fk_rails_...  (user_id => users.id)
#
class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :product_images, dependent: :destroy
  belongs_to :user
  belongs_to :size
  belongs_to :category
  has_one :order, dependent: :destroy
  has_one :buyer_user, through: :orders
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ship_from_location
  belongs_to_active_hash :product_condition
  belongs_to_active_hash :derivery_fee_payer
  belongs_to_active_hash :derivery_day
end
