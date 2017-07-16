class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable

   def user_name
   	
     return username;
   end     

   
  def  memberofgroup
    member = GroupMember.where(user_id: id).pluck(:groupDescription_id);  
    GroupDescription.where(id: member).pluck(:groupname);
  end

end
