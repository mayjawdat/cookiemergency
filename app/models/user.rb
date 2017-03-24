require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :orders

  validates :email, :hashed_password, {presence: true}
  validates :email, {uniqueness: true}

  def password 
    @password ||= BCrypt::Password.new(hashed_password)
  end
  
  def password=(password_input)
    @password ||= BCrypt::Password.create(password_input)
    self.hashed_password = @password
  end

  def self.authenticate(password_attempt)
    self.password == password_attempt
  end

end
