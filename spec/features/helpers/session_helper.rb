module SessionHelpers

  def sign_in(email, password)
    visit '/sessions/new'
    fill_in 'email', :with => email
    fill_in 'password', :with => password
    click_button 'Sign In'
  end

  def sign_up(username = "Costas",
              email = "example@example.com",
              password = "12345",
              password_confirmation = "12345")
    visit '/users/new'
    fill_in :username, :with => username
    fill_in :email, :with => email
    fill_in :password, :with => password
    fill_in :password_confirmation, :with => password_confirmation
    click_button "Sign Up"
  end

end