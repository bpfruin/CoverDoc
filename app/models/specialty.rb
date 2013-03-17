class Specialty < ActiveRecord::Base
  attr_accessible :field

  has_many :user_specialties
  has_many :post_specialties
  has_many :users, through: :user_specialties
  has_many :posts, through: :post_specialties

  validates_uniqueness_of :field


end
