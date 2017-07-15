class Groupparticipant < ActiveRecord::Base
  belongs_to :user
  belongs_to :groupDescription
end
