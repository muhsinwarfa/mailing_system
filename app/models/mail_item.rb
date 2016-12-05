class MailItem < ActiveRecord::Base
    has_one :location
    belongs_to :user 
end
