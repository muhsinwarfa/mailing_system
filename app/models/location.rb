class Location < ActiveRecord::Base
    belongs_to :mail_item
    has_one :user, through: :mail_item
    validates :latitude,:longitude, :mail_item_id,presence: true
    validates :mail_item_id , numericality: {greater_than_or_equal_to: 0}

    
end
