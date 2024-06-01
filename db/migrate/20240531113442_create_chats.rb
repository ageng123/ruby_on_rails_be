class CreateChats < ActiveRecord::Migration[7.1]
  def change
    create_table :chats, primary_key: [:cpk] do |t|
      t.string :cpk
      t.string :user
      t.string :message
      t.timestamps
    end
  end
end
