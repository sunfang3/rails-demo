class CreateXwlbs < ActiveRecord::Migration[7.1]
  def change
    create_table :xwlbs do |t|
      t.date :date
      t.integer :index_of_day
      t.string :title
      t.text :fulltext

      t.timestamps
    end
  end
end
