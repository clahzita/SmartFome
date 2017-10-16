class Menu < ActiveRecord::Base
  belongs_to :profile
  has_many   :products
end
