class Item < ActiveRecord::Base
	before_save { self.name = name.downcase }
	before_save { self.number = number.downcase }
	  validates :name, presence: true, length: { maximum: 250 },
	  uniqueness: { case_sensitive: false }
	  validates :number, presence: true, length: { maximum: 50 },
	                    uniqueness: { case_sensitive: false }
end
