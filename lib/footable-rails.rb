require "rails"
require "footable-rails/version"

module FootableRails
  module Rails
    if ::Rails.version < "3.1"
      require "footable-rails/railtie"
    else
      require "footable-rails/engine"
    end
  end
end