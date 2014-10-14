class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.string :comment_user, null: false
      t.belongs_to :post, index: true
      t.timestamps
    end
  end
end
