class Profile < ActiveRecord::Base
  # SDP: Probably needs a validates_presence_of ?
  belongs_to :user

  # SDP: Don't mix your Ruby hash syntax
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "30x30>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
