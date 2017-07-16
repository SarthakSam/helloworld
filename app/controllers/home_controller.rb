class HomeController < ApplicationController
  before_action :authenticate_user!
  def mainPage 
  @chats= current_user.memberofgroup();	
  puts @chats,"hello";
  end

  def startchat
  secPerson=params[:username];
  end

  def invitecontact
  end
  
  def sendmail
    for i in 1..4
  @user = params["friend#{i}"];
  u=User.where(username: @user)[0];
  # respond_to do |format|
  if u
     ProjectMailer.confirmation_email(@user).deliver     
   end
      # format.html { redirect_to @user, notice: 'User has confiremed request' }
      # # format.json { render :show, status: :created, location: @user }
    # else
    #   format.html { render :new }
    #   # format.json { render json: @user.errors, status: :unprocessable_entity }	
   end
   return redirect_to '/'
 end

  def personalChat
  personalchat = GroupDescription.new;
  personalchat.groupname= "Chat between "+current_user.username+"and"+params[:user];
  personalchat.save;
  u=User.where(username: params[:user])[0];
  user1=GroupMember.create(user_id: current_user.id,groupDescription_id: personalchat.id);
  user2=GroupMember.create(user_id: u.id,groupDescription_id: personalchat.id);
  redirect_to '/';
  end

end

