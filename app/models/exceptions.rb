# custom exceptions
module Exceptions
  class InvalidReferer < StandardError
    def message
      "Invalid referer: #{super}"
    end
  end
end
