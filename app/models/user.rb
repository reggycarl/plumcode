class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

   validates :first_name,  allow_blank: false, :presence => { message: "Please provide First name"}
    validates :last_name,  allow_blank: false, :presence => { message: "Please provide Last name"}
                 
   validates_format_of :mobile_number,
      :with => /\(?[0-9]{3}\)?[0-9]{3}[0-9]{4}/,
      :message => "- Phone number must be 10 digits in 0xxxxxxxx format."
      
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :presence => { message: "Email is required"}



           devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

         after_create :send_admin_mail
  def send_admin_mail
    UserMailer.welcome_to_cybercity(self).deliver_now
    UserMailer.alert_cybercity(self).deliver_now  
  end
end
