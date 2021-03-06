class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.references :user, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.string :motive
      t.text :diagnostic
      t.timestamps

    end
  end
end
