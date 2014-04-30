class Page < ActiveRecord::Base
  attr_accessible :title, :content
  
  validate_precense_of :title, :content

  has_friendly_id :title, :use_slug => true, :approximate_ascii => true
end
