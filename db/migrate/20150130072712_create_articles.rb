class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :story

      t.timestamps null: false
    end
  end
end
