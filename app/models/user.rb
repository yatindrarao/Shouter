class User < ActiveRecord::Base
  include UserConcern
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
