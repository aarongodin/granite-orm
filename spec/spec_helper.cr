require "spec"
require "../src/amethyst-model"
include Amethyst::Model

class Post < Model
  fields({ name: "VARCHAR(255)", body: "TEXT" })
end

module Base
  class App
    def self.settings
      @@config ||= Config.new
    end
  end
  class Config
    property :environment
  end
end

Base::App.settings.environment = "test"