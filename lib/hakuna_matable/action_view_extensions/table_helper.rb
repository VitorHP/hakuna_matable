module HakunaMatable
  module ActionViewExtensions

    module TableHelper
      # this defines a helper to generate a table based on a collection

      def hakuna_matable_for collection, options = {}
        table_builder = options[:builder] ||= HakunaMatable::TableBuilder

        table_builder.new.build_table_for self, collection, options
      end
    end
  end
end

ActionView::Base.send :include, HakunaMatable::ActionViewExtensions::TableHelper
