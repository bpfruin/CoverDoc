class Post < ActiveRecord::Base
  attr_accessible :description, :end_date, :fee, :location, :start_date, :user_id, :specialty_ids

  validates_presence_of :description
  validates_presence_of :end_date
  validates_presence_of :start_date
  validates_presence_of :location
  validates_presence_of :user_id

  belongs_to :user

  has_many :messages

  has_many :post_specialties
  has_many :specialties, :through => :post_specialties



end
