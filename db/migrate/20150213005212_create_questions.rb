class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :position
      t.references :survey, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :surveys
  end
end
