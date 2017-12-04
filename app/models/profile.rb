class Profile < ActiveRecord::Base
  belongs_to :user
  has_one    :menu
  has_and_belongs_to_many :payment_methods
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :image, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  after_create :create_menu
  
  def create_menu
    menu = Menu.new(profile_id: self.id)
    menu.save!
  end
  
  def self.search(search)
    where("business_name LIKE ? OR description LIKE ? OR category LIKE ? OR address LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
