require 'rack/cors'

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    allowed_origins = ENV.fetch("CORS_ALLOWED_ORIGINS", "api.parliament.uk").split(',')

    if Rails.configuration.asset_host.present?
      asset_host = Rails.configuration.asset_host.gsub(/^https?:\/\//, '')
      allowed_origins << asset_host
    end

    origins allowed_origins.uniq
    resource %r{/fonts/.*\.(woff|woff2|ttf|eot|otf)$},
            headers: :any,
            methods: [:get, :head, :options]

    resource %r{/assets/.*\.(woff|woff2|ttf|eot|otf)$},
            headers: :any,
            methods: [:get, :head, :options]

    resource '*.woff2', headers: :any, methods: [:get]
    resource '*.js', headers: :any, methods: [:get]

    pp "In the gem one"
  end
end
