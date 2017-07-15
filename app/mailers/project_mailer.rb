class ProjectMailer < ApplicationMailer
	  default from: "railsprojectbysam@gmail.com"

    def confirmation_email(user)
    @user = user
    u=User.where(username: @user)[0];
    mail(to: u.email, subject: 'FriendRequest')
  end

end
