class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, index: true

      # this line adds an integer column called 'article_id'
      t.timestamps null: false
    end
  end
end
