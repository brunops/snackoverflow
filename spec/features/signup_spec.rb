require 'spec_helper'

feature 'Signup' do
  scenario 'Guest submits signup form with valid information' do
    visit signup_path
    fill_in 'user_username', with: Faker::Internet.user_name
    fill_in 'user_password', with: Faker::Internet.password
    click_on 'Sign Up'
    expect(current_path).to eq root_path
  end
end