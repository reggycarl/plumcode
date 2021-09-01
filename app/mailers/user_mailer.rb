class UserMailer < ApplicationMailer

  default from: 'info@cybercityschool.com'
  def welcome_to_cybercity(user)
    @user = user
    puts "---------------------------------------"
    puts "User #{@user}"
    puts "---------------------------------------"
    email_with_name = %("#{@user.first_name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'CyberCity - Thank you for getting started with CyberCity School')
  end

  # def pay_course(user,student)
    # @user = user
    # @student_id = student
    # puts "---------------------------------------"
    # puts "User is #{@user.inspect}"
    # puts "STUDENT ID IS is #{@student_id.student_id}"
    # puts "---------------------------------------"
    # email_with_name = %("#{@user.first_name}" <#{@user.email}>)
    # mail(to: email_with_name, subject: 'CyberCity - Application Received')  
# 
  # end
  
    def pay_course(fullname,email)
    @fullname = fullname
    @email = email
    
    puts "---------------------------------------"
    puts "User is #{@fullname}"
    puts "Email is #{@email}"
    puts "---------------------------------------"
    email_with_name = %("#{@fullname}" <#{@email}>)
    mail(to: email_with_name, subject: 'CyberCity - Application Received')  

  end

  def alert_cybercity(fullname)
   @fullname = fullname

    mail(to: "info@cybercityschool.com,nana.osafo.bosompem@gmail.com", subject: 'CyberCity Signup ALERT!')

  end

  def alert_cybercity_after_apply(fullname,email)
    @fullname = fullname
    @email = email
    mail(to: "info@cybercityschool.com,nana.osafo.bosompem@gmail.com", subject: 'CyberCity User Applied ALERT!')

  end

end
