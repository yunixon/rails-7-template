Sentry.init do |config|
  config.enabled_environments = %w[production staging]
  config.async = ->(event, hint) { Sentry::SendEventJob.perform_later(event, hint) }
  config.backtrace_cleanup_callback = ->(backtrace) { Rails.backtrace_cleaner.clean(backtrace) }
  config.breadcrumbs_logger = %i[
    active_support_logger
    http_logger
    sentry_logger
  ]
  config.dsn = Credentials.get(:sentry, :dsn)
  config.send_default_pii = true
end
