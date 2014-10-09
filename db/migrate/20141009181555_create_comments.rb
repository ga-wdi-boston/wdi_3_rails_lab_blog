class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_text, null: false
      t.string :comment_user, null: false
      t.timestamp :comment_time
      t.belongs_to :post, index: true
    end
  end
end
