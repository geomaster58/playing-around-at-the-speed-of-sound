class CreateTheMoths < ActiveRecord::Migration[5.1]
  def change
    create_table :the_moths do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
