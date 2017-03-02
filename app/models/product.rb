class Product < ApplicationRecord
	has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  

  validates :title, presence: true, length: { maximum: 50 }
  validates :subtitle, presence: true, length: { maximum: 150 }
  validates :price, presence: true, numericality: { only_decimal: true }
  validates :download_url, presence: false


	def price_in_cents
		(self.price * 100).to_i
	end







end





	