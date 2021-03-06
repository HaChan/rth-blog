class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ""
      t.text :body, null: false, default: ""
      t.references :user

      t.timestamps
    end
  end
end
