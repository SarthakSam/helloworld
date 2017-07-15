# Preview all emails at http://localhost:3000/rails/mailers/project_mailer
class ProjectMailerPreview < ActionMailer::Preview
  
   def confirmation_mail_preview
    ProjectMailer.confirmation_email(User.first)
  end

end
