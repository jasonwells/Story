class Photo < ActiveRecord::Base
  belongs_to :person
  belongs_to :event
  
  default_scope :order => 'date_taken ASC'
  
  has_attached_file :photo
  validates_attachment_presence :photo
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  validates :title, :presence => true
  validates :event, :presence => {:unless => :person, :message => "Person or Event must be assigned"}
end
