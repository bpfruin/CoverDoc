class PostSpecialty < ActiveRecord::Base
  attr_accessible :post_id, :post_specialty_name, :specialty_id

  belongs_to :post
  belongs_to :specialty

end
