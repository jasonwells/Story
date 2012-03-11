class Event < ActiveRecord::Base
  belongs_to :person
  has_many :photos
  
  default_scope :order => 'event_date ASC'
  
  validates :title, :presence => true
  validates :content, :presence => true
  validates :person, :presence => true
  
  def photos
    Photo.find(:all, :conditions => ['event_id=?', id])
  end
end
