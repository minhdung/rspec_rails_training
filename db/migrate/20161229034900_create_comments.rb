class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :coment
      t.integer :post_id
      t.string :username

      t.timestamps
    end
  end
end
