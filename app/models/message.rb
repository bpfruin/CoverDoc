class Message < ActiveRecord::Base
  attr_accessible :body, :post_id, :poster_id, :sender_id




  belongs_to :poster, :class_name => 'User', :foreign_key => :poster_id

  belongs_to :sender, :class_name => 'User', :foreign_key => :sender_id


  belongs_to :post





end
