class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.belongs_to :post, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
