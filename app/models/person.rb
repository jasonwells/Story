class Person < ActiveRecord::Base
  GENDERS = ['Male', 'Female']
  
  default_scope :order => 'birth ASC'
  
  has_many :children, :class_name => "Person"
  has_many :siblings, :class_name => "Person"
  has_many :events
  has_many :photos
  belongs_to :father, :class_name => "Person", :foreign_key => 'father_id'
  belongs_to :mother, :class_name => "Person", :foreign_key => 'mother_id'
  
  validates :gender, :presence => true
  
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
  
  def children
    Person.find(:all, :conditions => ['father_id=? or mother_id=?', id, id])
  end
  
  def siblings
    Person.find(:all, :conditions => ['(father_id=? or mother_id=?) and id!=?', father_id, mother_id, id])
  end
  
  def photos
    Photo.find(:all, :conditions => ['person_id=?', id])
  end
end
