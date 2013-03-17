class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone, :password, :password_confirmation, :specialty_ids

  has_secure_password

  validates_presence_of :email
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :phone
  validates_uniqueness_of :email

  has_many :messages
  has_many :posts
  has_many :user_specialties
  has_many :specialties, :through => :user_specialties


  before_create { generate_token(:auth_token) }


  


  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end



  before_destroy { |record| Post.destroy_all "user_id = #{record.id}"   }
  before_destroy { |record| Message.destroy_all "poster_id = #{record.id}" }
  before_destroy { |record| Message.destroy_all "sender_id = #{record.id}" }


end