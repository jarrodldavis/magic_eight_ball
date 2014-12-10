module ActiveModel
  class Serializer
    class << self
      def serializer_for(resource, options = {})

        serializer = _const_get build_serializer_class(resource, options)
        if serializer
          serializer
        elsif resource.respond_to?(:each)
          ArraySerializer
        end

      end
    end
  end
end
