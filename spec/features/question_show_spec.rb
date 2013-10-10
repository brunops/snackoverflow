require 'spec_helper'

feature "Question page" do
  let(:question) { FactoryGirl.create(:question) }

  scenario "displays question body" do
    question
    visit question_path(question)
    expect(page).to have_content question.body
  end
end