ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all
ActionView::Template.register_template_handler :arb, lambda { |template|
    "self.class.send :include, Arbre::Builder; @_helpers = self; self.extend ActiveAdmin::ViewHelpers; @__current_dom_element__ = Arbre::Context.new(assigns, self); begin; #{template.source}; end; current_dom_context"
    # old line is "self.class.send :include, Arbre::Builder; @_helpers = self; @__current_dom_element__ = Arbre::Context.new(assigns, self); begin; #{template.source}; end; current_dom_context"
}
  # Add more helper methods to be used by all tests here...
end
