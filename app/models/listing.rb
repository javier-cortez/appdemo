require 'paperclip/media_type_spoof_detector'
module Paperclip 
	class MediaTypeSpoofDetector
		def spoofed? 
			false 
		end 
	end 
end

class Listing < ActiveRecord::Base
	if Rails.env.development?
    has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.png"
  else
	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.png",
	:storage => :dropbox,
	:dropbox_credentials => Rails.root.join("config/dropbox.yml")
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
