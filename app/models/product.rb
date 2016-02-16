class Product < ActiveRecord::Base
	attr_accessor :advertiser_name

	belongs_to :advertiser

	validates :description, :name, :price, :advertiser_id, presence: true
	validates :price, numericality: true
end
