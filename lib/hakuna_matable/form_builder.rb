module HakunaMatable
  class FormBuilder < BaseBuilder

    def build_form_for view, collection, options = {}
      @collection = collection
      @fields = options.fetch(:fields){ [] }

      view.render partial: "hakuna_matable/default_form", locals: { fields: fields_to_render, item: @collection.first }
    end

  end
end
