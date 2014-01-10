require 'socket'
server = TCPServer.open(1500)
loop {
	client = server.accept
	client.puts "Hello, client!"
	client.puts "Goodbye, client!"
	client.puts "Closing connection..."
	client.close
}
