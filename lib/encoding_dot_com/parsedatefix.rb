require 'date/format'
require 'time'

module EncodingDotCom
  module ParseDateFix
    
    # parsedate has been removed in ruby 1.9
    def parsedate(text)
      array = Date._parse(text, false).values_at(:year, :mon, :mday, :hour, :min, :sec, :zone, :wday)
    end
    
  end
end