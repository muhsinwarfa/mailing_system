class User < ActiveRecord::Base
    has_many :mail_items
    has_one :location , through: :mail_items
end
