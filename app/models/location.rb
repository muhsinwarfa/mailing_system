class Location < ActiveRecord::Base
    belongs_to :mail_item
    has_one :user, through: :mail_item
end
