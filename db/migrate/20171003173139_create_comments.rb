class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.bigserial :idpost
      t.bigserial :iduser
      t.text :content

      t.timestamps
    end
  end
end
