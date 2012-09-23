class CreateReponses < ActiveRecord::Migration
  def change
    create_table :reponses do |t|
      t.integer :question_id
      t.string :answer

      t.timestamps
    end
  end
end
