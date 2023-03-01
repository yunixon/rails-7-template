require 'rails_helper'

describe 'Admin - Login' do
  let(:admin) { create(:admin, password: 'password') }

  before do
    visit new_admin_session_path
  end

  it 'sign in successfully' do
    fill_in 'admin_email', with: admin.email
    fill_in 'admin_password', with: 'password'
    click_button 'Login'

    expect(page).to have_content 'Dashboard'
  end

  it 'returns error if has invalid email' do
    fill_in 'admin_email', with: 'bademail@'
    fill_in 'admin_password', with: 'password'
    click_button 'Login'

    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'returns error if has invalid password' do
    fill_in 'admin_email', with: admin.email
    fill_in 'admin_password', with: 'incorrect'
    click_button 'Login'

    expect(page).to have_content 'Invalid Email or password.'
  end
end
