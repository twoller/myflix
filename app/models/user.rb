class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :full_name, presence: true
  validates :password, presence: true

  has_secure_password validations: false

  has_many :queue_items
end
