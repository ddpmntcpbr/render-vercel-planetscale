class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, comment: "タイトル"
      t.text :content, comment: "本文"
      t.timestamps
    end
  end
end
