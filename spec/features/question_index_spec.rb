require 'spec_helper'

feature "Questions index (home) page" do
  let(:question1) { FactoryGirl.create (:question) }
  let(:question2) { FactoryGirl.create (:question) }

  scenario "shows question on home page" do
    question1
    visit root_path
    expect(page).to have_content question1.title
  end

  scenario "shows questions in order of most recent" do
    question1
    question2
    visit root_path
    expect(page.text).to match(Regexp.new(question2.title + "(.*)?" + question1.title, Regexp::MULTILINE))
  end
end