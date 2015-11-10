class AddGuideRefToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :guide, index: true, foreign_key: true
  end
end
