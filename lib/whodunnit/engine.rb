module Whodunnit
  class Engine < ::Rails::Engine
    isolate_namespace Whodunnit

    initializer "whodunnit.load_helpers" do |app|
      ActionController::Base.send :include, Whodunnit::ApplicationHelper
    end
  end
end
