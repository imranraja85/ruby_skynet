module RubySkynet
  module Callable
    def call(options = {})
      self.new(options).call    
    end
  end
end
