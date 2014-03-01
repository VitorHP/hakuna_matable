module HakunaMatable
  class BaseBuilder

    private

    def fields_to_render
      selected_fields ||= field_list(@collection.first).select do |field|
        @fields.include?(field)
      end

      selected_fields.empty? ? field_list(@collection.first) : selected_fields
    end

    def field_list object
      object.attributes.keys.map(&:to_sym)
    end

  end
end
