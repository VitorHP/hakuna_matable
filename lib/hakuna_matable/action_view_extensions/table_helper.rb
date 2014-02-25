module HakunaMatable
  module ActionViewExtensions

    module TableHelper
      # this defines a helper to generate a table based on a collection

      def hakuna_matable collection, options = {}
        table_builder = options[:builder] ||= HakunaMatable::TableBuilder

        table_builder.new.table_for collection, options
      end
    end
  end
end

ActionView::Base.send :include, HakunaMatable::ActionViewExtensions::TableHelper
