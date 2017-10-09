class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :slug
      t.text :content
      t.text :thumbnail
      t.bigserial :user_id
      t.bigint :view, default: 0

      t.timestamps
    end
  end
end
