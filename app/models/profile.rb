class Profile < ActiveRecord::Base
  belongs_to :user
  has_one    :menu
  
  after_create :create_menu
  
  def create_menu
    menu = Menu.new(profile_id: self.id)
    menu.save!
  end
  
  def self.search(search)
    where("business_name LIKE ? OR description LIKE ? OR category LIKE ? OR address LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
