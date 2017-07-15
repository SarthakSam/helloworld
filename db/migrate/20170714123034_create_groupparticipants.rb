class CreateGroupparticipants < ActiveRecord::Migration
  def change
    create_table :groupparticipants do |t|
      t.references :user, index: true, foreign_key: true
      t.references :groupDescription, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
