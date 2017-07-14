class CreateGroupDescriptions < ActiveRecord::Migration
  def change
    create_table :group_descriptions do |t|
      t.string :groupname
      t.string :profilepic

      t.timestamps null: false
    end
  end
end
