#!/usr/bin/env ruby

file = ARGV[0]

fh = open file
content = fh.read

sender_match = /(from:\+?\w*)/.match(content)
receiver_match = /(to:.?[0-9]{11})/.match(content)
flags_match = /(flags:(.?[0-9]:){4}(.?[0-9]))/.match(content)

fh.close

sender = sender_match[1].split(':', 2)[1]
receiver = receiver_match[1].split(':', 2)[1]
flags = flags_match[1].split(':', 2)[1]

puts sender + "," + receiver + "," + flags
