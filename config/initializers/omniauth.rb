# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, ENV['client_id'], ENV['client_secret']
  else
    provider :github, ENV['client_id'], ENV['client_secret']
  end
end
