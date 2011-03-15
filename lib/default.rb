# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc3::Helpers::LinkTo
require 'date'

def next_meeting()
    # Return the Item which represents the next meeting
    f = future_meetings
    return nil if f.count == 0
    return f[0]
end

def future_meetings()
    # Return all the future meetings
    today = Date.today
    future = @items.find_all { |i| not i[:date].nil? and i[:date] >= today }
    future.sort { |a, b| a[:date] <=> b[:date] }
end
