# config/environments/test.rb
Rails.application.configure do
  # [ ... ]

  config.action_dispatch.show_exceptions = true # Update this line
  # Do not eager load code on boot.
  config.eager_load = false
  # [ ... ]
end
