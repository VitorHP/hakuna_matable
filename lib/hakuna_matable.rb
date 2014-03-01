require 'hakuna_matable/engine'
require 'hakuna_matable/action_view_extensions/table_helper'
require 'hakuna_matable/action_view_extensions/form_helper'

module HakunaMatable
  extend ActiveSupport::Autoload

  autoload :BaseBuilder
  autoload :TableBuilder
  autoload :FormBuilder
end
