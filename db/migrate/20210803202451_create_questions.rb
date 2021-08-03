class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.column(:question, :string)
      t.column(:survey_id, :integer)
      t.timestamps
    end
  end
end