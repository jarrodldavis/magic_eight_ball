class CreateApiV1Responses < ActiveRecord::Migration
  def change
    create_table :api_v1_responses do |t|
      t.string :text, limit: 50
      t.boolean :default

      t.timestamps
    end
  end
end
