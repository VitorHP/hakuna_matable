module HakunaMatable
  class TableBuilder < BaseBuilder

    def build_table_for view, collection, options = {}
      @collection = Array(collection)
      @fields = options.fetch(:fields){ [] }

      return nil if collection.empty?
      raise "All items in the collection must respond to #attributes" unless collection.first.respond_to? :attributes

      view.render partial: "hakuna_matable/default_table", locals: { fields: fields_to_render, collection: @collection }
    end

  end
end
