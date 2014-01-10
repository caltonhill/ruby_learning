require 'socket' #require socket library
host = 'localhost'
port = 1500

sock = TCPSocket.open(host, port) #calling from socket library

while line = sock.gets
	puts line.chomp
end
sock.close