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
      # content_tag :table do
      #   (header(collection.first, fields_to_render) + body(collection, fields_to_render)).html_safe
      # end
    end

    def logger

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

    def header item, fields
      content_tag :thead do
        fields.each_with_object("") do |attr, memo|
          memo << content_tag(:th, attr.to_s)
        end.html_safe
      end
    end

    def body collection, fields
      content_tag :tbody do
        collection.each_with_object("") do |item, memo|
          memo << row(item, fields)
        end.html_safe
      end
    end

    def row item, fields
      content_tag(:tr) do
        fields.each_with_object("") do |field, memo|
          memo << content_tag(:td, item[field].to_s)
        end.html_safe
      end
    end

  end
end
