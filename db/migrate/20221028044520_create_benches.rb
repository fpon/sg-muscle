class CreateBenches < ActiveRecord::Migration[7.0]
  def change
    create_table :benches do |t|

      t.integer :weight, null: false
      t.integer :number, null: false

      t.references :training, foreign_key: true
      t.timestamps
    end
  end
end
