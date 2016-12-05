class MailItem < ActiveRecord::Base
    has_one :location
    belongs_to :user 
    
    validates :date_arrived_pittsburgh,:date_arrived_qatar,:date_delivered,:sender,:description,:shipping_weight,:discard,:user_id, presence: true
    validates :user_id ,:shipping_weight  , numericality: {greater_than_or_equal_to: 0}
     
    scope :arrived_this_week, lambda { where("date_delivered >= :date", :date => 1.week.ago) }
    scope :item_on_transit, lambda { where("date_delivered >= :date", :date => Time.now)
    
    scope :discard_item, lambda {where("date_delivered < :date", :date => Time.now)}
    


    def TotalWeights
        return self.sum(:shipping_weight)
    end


end
