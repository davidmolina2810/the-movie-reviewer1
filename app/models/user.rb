class User < ApplicationRecord
    has_many :reviews
    has_many :movies, through: :reviews
    has_many :likes
    has_secure_password

    validates :email, presence: true
    validates :email, uniqueness: true
    validates :username, presence: true
    validates :password, length: { minimum: 6 }

    def full_name
      "#{self.first_name} #{self.last_name}"
    end
end
