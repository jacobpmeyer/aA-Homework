# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :session_token, :username, presence: true
  validates :password_digest, presence: true, message: "Passwords can't be blank"
  validates :password, length: { minimum: 8, allow_nil: true } 

  before_validation :ensure_session_token

  def password=(password)
    self.password_digest = BCrypt
  end

  def self.find_by_credentials(username, password)
    User.find_by username: username, :password_digest => password
  end

  def self.generate_session_token
    SecureRandom::urlafe_base64
  end

  def reset_session_token!
    session_token = User.generate_session_token
    self.save
  end

  def ensure_session_token
    unless self.session_token
      self.session_token = self.reset_session_token!
    end
  end

  def password=(user_password)
    self.password_digest = BCrypt::Password.create(user_password)
  end
end
