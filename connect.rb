#!/usr/bin/env ruby

require 'socket'

# connect via tcp socket
instrument = TCPSocket.new 'rsa22471.local', 5025

# query id string
# Note: '\n' delimits each read/write
instrument.puts "*IDN?\n"
id_string = instrument.gets.strip

# print
puts id_string

#
# TODO: YOUR CODE HERE
#

# put instrument back into local mode
instrument.puts "@LOC"

# close connection
instrument.close
