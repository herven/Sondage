class CreateAdminQuestions < ActiveRecord::Migration
  def change
    create_table :admin_questions do |t|
      t.string :title
      t.string :answer_1
      t.string :answer_2

      t.timestamps
    end
  end
end
