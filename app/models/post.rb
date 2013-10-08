class Post < ActiveRecord::Base
  belongs_to :category
  
  
  validates :title, presence: true
  validates :description, presence: true
  validates :contact, presence: true
end
