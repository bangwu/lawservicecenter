class CreateConsults < ActiveRecord::Migration[5.0]
  def change
    create_table :consults do |t|
      t.integer :question_type
      t.string :title
      t.datetime :time
      t.string :address
      t.string :contact
      t.string :phone
      t.string :question
      t.string :attachment
      t.string :member
      t.timestamps
    end
  end
end
