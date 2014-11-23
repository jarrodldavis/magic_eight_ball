class CreateApiV1Questions < ActiveRecord::Migration
  def change
    create_table :api_v1_questions do |t|
      t.string :text, limit: 50
      t.references :response, index: true, null: false
      t.references :user, index: true

      t.timestamps
    end
  end
end
