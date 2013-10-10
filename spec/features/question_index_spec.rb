require 'spec_helper'

feature "Questions index (home) page" do
  let(:question) { FactoryGirl.create (:question) }

  scenario "shows question on home page" do
    question
    visit root_path
    expect(page).to have_content question.title
  end
end