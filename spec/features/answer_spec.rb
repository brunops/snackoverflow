require 'spec_helper'

feature "QUestions" do
  let(:new_question) {FactoryGirl.create(:question)}

  scenario "user can answer a question" do
    visit question_path(new_question)
    fill_in "answer_body", with: "some answer"
    click_on 'Submit'
    expect(page).to have_content("some answer")
  end
end