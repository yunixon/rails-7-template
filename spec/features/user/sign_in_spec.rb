require 'rails_helper'

describe 'Users - Sign In' do
  let(:user) { create(:user, password: 'password') }

  before do
    visit new_user_session_path
  end

  it 'sign in successfully' do
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: 'password'
    click_button 'Log In'

    expect(page).to have_content 'Dashboard'
  end

  it 'returns error if has invalid email' do
    fill_in 'user_email', with: 'bademail@'
    fill_in 'user_password', with: 'password'
    click_button 'Log In'

    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'returns error if has invalid password' do
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: 'incorrect'
    click_button 'Log In'

    expect(page).to have_content 'Invalid Email or password.'
  end
end
