# spec/features/google_oauth_spec.rb
require 'rails_helper'

RSpec.describe "Login", type: :system do
    before do
        driven_by(:rack_test)

        # Configure OmniAuth for testing
        OmniAuth.config.test_mode = true

        # Mock the Google OAuth response
        OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
        provider: 'google_oauth2',
        uid: '123456',
        info: {
        email: 'admin@example.com',
        name: 'Admin User',
        image: 'https://example.com/avatar.jpg'
        },
        credentials: {
        token: 'mock_token',
        expires_at: Time.now + 1.week
        }
        })

        # Create an admin in the database

        @admin = Admin.create!(
        email: 'admin@example.com',
        full_name: 'Admin User',
        uid: '123456',
        avatar_url: 'https://example.com/avatar.jpg'
        )
    end

    it 'saves & displays the resulting blog post' do
        # Simulate OAuth login
        visit '/admins/auth/google_oauth2/callback'

        # Expect to be redirected to the root path after successful login
        expect(page).to have_current_path(root_path)
    end
end
