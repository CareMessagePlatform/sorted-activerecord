require 'rails'
require 'rails/railtie'
require 'sorted/activerecord/helper'

module Sorted
  module ActiveRecord
    class Railtie < ::Rails::Railtie
      config.after_initialize do |_app|
        ActiveSupport.on_load(:active_record) do
          include Sorted::ActiveRecord::Helper
        end
      end
    end
  end
end