class Place < ActiveRecord::Base
	belongs_to :user
		validates :name, :presence => true, :length => { :minimum => 4 }
		validates :address, :presence => true
		validates :description, :presence => true
end
