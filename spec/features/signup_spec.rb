require 'spec_helper'

feature 'Signup' do
  scenario 'Guest submits signup form with valid information' do
    visit new_user_path
    fill_in 'user_username', with: Faker::Internet.user_name
    fill_in 'user_password', with: Faker::Internet.password
    fill_in 'user_email', with: Faker::Internet.email
    click_on 'Sign Up'
    expect(current_path).to eq root_path
  end

  scenario 'without username keeps user in the same page and show error message' do
    visit new_user_path
    fill_in 'user_password', with: Faker::Internet.password
    click_on 'Sign Up'

    expect(page.text).to have_text "can't be blank"
  end
end