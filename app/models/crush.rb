class Crush < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :picture, :title, :description, :user_id, :crushed

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/\
end
