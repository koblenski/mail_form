module Mailform
  def self.attributes(*names)
    attr_accessor(*names)
  end
end
