class Item < ActiveRecord::Base
  validates :price, numericality: {greater_than: 0, allow_nill: true}
  validates :name, :description, presence: true

  after_initialize {puts "initialized"} # Item.new
  after_save {puts "saved"} # Item.save
  after_create {puts "created"}
  after_update {puts "updated"}
  after_destroy {puts "destroyed"} # item.destroy

end
