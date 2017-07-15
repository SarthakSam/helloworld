class ProjectMailer < ApplicationMailer
	  default from: "railsprojectbysam@gmail.com"

    def confirmation_email(user)
    @user = user
    mail(to: @user.email, subject: 'FriendRequest')
  end

end
