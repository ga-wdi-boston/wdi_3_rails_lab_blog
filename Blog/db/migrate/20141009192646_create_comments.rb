class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author, null: false
      t.text :content, null: false
      t.belongs_to :post, index: true

      t.timestamps null: false
    end
  end
end
