require 'spec_helper'

describe "user can create a question" do
  it "user can create question" do
    visit root_path
    click_on 'Ask a question'
    fill_in 'question_title', with: "question title"
    fill_in 'question_body', with: "question body"
    click_on 'Submit'
    expect(page).to have_content("question title")
  end
end