using Sockets

conn = connect(5000)

println("Conectado ao servidor. Digite uma mensagem para enviar:")

while true
  message = readline()
  write(conn, "$message\n")
  response = readline(conn)
  println("Resposta do servidor: $response")
end