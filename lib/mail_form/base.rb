module MailForm
  class Base
    include ActiveModel::AttributeMethods # 1) attribute methods behavior
    attribute_method_prefix 'clear_'      # 2) clear_ is attribute prefix

    def self.attributes(*names)
      attr_accessor(*names)
      define_attribute_methods(names)
    end

    protected

      def clear_attribute(attribute)
        send("#{attribute}=", nil)
      end
  end
end
