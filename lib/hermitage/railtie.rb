# frozen_string_literal: true

require 'hermitage/view_helpers'

module Hermitage
  class Railtie < Rails::Railtie
    initializer 'hermitage.view_helpers' do |_app|
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end
