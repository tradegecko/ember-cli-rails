module EmberCli
  class Engine < Rails::Engine
    initializer "ember-cli-rails.setup" do
      require "ember_cli/route_helpers"

      ActiveSupport.on_load(:action_controller_base) do
        ActionController::Base.helper EmberRailsHelper
      end

      ActiveSupport.on_load(:after_initialize) do
        require "ember_cli/ember_controller"
      end
    end
  end
end
