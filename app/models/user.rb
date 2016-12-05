class User < ActiveRecord::Base
    has_many :mail_items
    has_one :location , through: :mail_items
    
    validates :first_name,:last_name, presence: true, length: {maximum: 50}
    validates :password , length: {minimum: 6},uniqueness: { case_sensitive: false }

    
    has_secure_password
end
