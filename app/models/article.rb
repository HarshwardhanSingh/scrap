class Article < ActiveRecord::Base
  has_attached_file :photo, :styles => { :large => '500x500>',:medium => "200x200>", :thumb => "50x50#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
