module HakunaMatable
  module ActionViewExtensions

    module FormHelper
      # this module defines a method to render the form for editing a hakuna_matable

      def hakuna_maform_for collection, options = {}
        form_builder = options[:builder] ||= HakunaMatable::FormBuilder

        form_builder.new.build_form_for self, collection, options
      end
    end
  end
end

ActionView::Base.send :include, HakunaMatable::ActionViewExtensions::FormHelper
