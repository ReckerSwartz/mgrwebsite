class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, 
  default_url:  "default.jpg",
  url: "/assets/products/:id/:attachment/:style/:basename.:extension",
  path: ":rails_root/public/assets/products/:id/:attachment/:style/:basename.:extension"
  validates_attachment_presence :avatar
  validates_attachment_size :avatar, less_than: 5.megabytes
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :avatar,presence: true       
end
