unless Rails.env.production?
  Slim::Engine.default_options[:pretty] = true
end
