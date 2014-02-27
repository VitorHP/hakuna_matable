module HakunaMatable
  class TableBuilder
    include ActionView::Helpers::RenderingHelper

    attr_accessor :output_buffer

    def table_for collection, options = {}
      collection = Array(collection)
      fields = options.fetch(:fields){ [] }

      return nil if collection.empty?
      raise "All items in the collection must respond to #attributes" unless collection.first.respond_to? :attributes

      fields_to_render = field_list(collection.first).select do |field|
        fields.include?(field)
      end

      fields_to_render = field_list(collection.first) if fields_to_render.empty?

      render partial: "hakuna_matable/default_table", locals: { fields: fields_to_render, collection: collection }
    end

    def logger
      # dummy method called by ActionView::Renderer or someone inside it
    end

    def view_renderer
      ActionView::Renderer.new lookup_context
    end

    def lookup_context
      ActionView::LookupContext.new(File.expand_path('app/views'))
    end

    private

    def field_list object
      object.attributes.keys.map(&:to_sym)
    end

  end
end
