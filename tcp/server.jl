using Sockets

server = listen(5000)

println("Servidor iniciado. Aguardando conexões...")

while true
    conn = accept(server)
    println("Conexão estabelecida com $(getpeername(conn))")

    while true
        message = readline(conn)
        if message == ""
            break
        end
        println("Recebi mensagem: $message")
        write(conn, "Servidor recebeu: $message\n")
    end

    println("Conexão fechada com $(getpeername(conn))")
    close(conn)
end