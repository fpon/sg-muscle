class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.date :day, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
