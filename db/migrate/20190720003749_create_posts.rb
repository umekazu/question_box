class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :body
      t.integer :question_id

      t.timestamps
    end
  end
end
