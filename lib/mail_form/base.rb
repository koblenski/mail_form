module MailForm
  class Base
    include ActiveModel::AttributeMethods # 1) attribute methods behavior
    attribute_method_prefix 'clear_'      # 2) clear_ is attribute prefix
    attribute_method_suffix '?'

    def self.attributes(*names)
      attr_accessor(*names)
      define_attribute_methods(names)
    end

    protected

      def clear_attribute(attribute)
        send("#{attribute}=", nil)
      end

      def attribute?(attribute)
        send(attribute).present?
      end
  end
end
