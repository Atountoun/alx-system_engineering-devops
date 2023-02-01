#!/usr/bin/env ruby

message = ARGV[0]

sender = message.scan(/\[from:(.*?)\]/).flatten[0]
receiver = message.scan(/\[to:(.*?)\]/).flatten[0]
flags = message.scan(/\[flags:(.*?)\]/).flatten[0]

puts "#{sender},#{receiver},#{flags}"
