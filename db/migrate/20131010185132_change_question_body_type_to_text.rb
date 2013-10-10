class ChangeQuestionBodyTypeToText < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.change :body, :text
    end
  end
end
