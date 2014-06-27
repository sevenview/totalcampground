# Helper to sign ina user in Feature specs
module FeatureSignInHelper
  def sign_in(user)
    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end
end

# Helper to sign in a user in Request specs
module RequestSignInHelper
  def sign_in(user)
    post_via_redirect(user_session_path('user[email]' => user.email,
                                        'user[password]' => user.password))
  end
end

# Wire the tests up to RSpec
RSpec.configure do |config|
  config.include FeatureSignInHelper, type: :feature
  config.include RequestSignInHelper, type: :request
end
