module I18n
  module Alchemy
    module TimeParser
      include DateParser
      extend  self

      private

      def build_object(parsed_date)
        Time.new(*parsed_date.values_at(:year, :mon, :mday, :hour, :min, :sec))
      end

      def i18n_scope
        :time
      end

      def valid_for_localization?(value)
        value.is_a?(Time) || value.is_a?(DateTime)
      end
    end
  end
end
