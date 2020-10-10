class AddForeignKeyTicketToUser < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :tickets, :users
    add_foreign_key :comments, :users
  end
end
