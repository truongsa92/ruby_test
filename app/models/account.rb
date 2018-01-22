require 'bcrypt'

class Account < ApplicationRecord
  include BCrypt
  include ActiveModel::Validations

  has_many :order

  before_save :encryptPassword
  before_update :encryptPassword
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates_confirmation_of :password
  validates :name, presence: true, length: {maximum: 15}
  def encryptPassword 
    self.password = Digest::SHA1.hexdigest(self.password)
  end
end
