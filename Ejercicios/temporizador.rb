def temporizador
    hora = 0
    min = 0
    seg = 0
    opc = 1
    while min < 1
        seg += 1
        if seg >= 60
            seg = 0
            min += 1 
        end
        if min >= 60
            min = 0
            hora += 1 
        end
        time = "#{min}:#{seg}"
        puts time
        puts Time.new(2000,1,1,hora,min,seg).strftime('%H:%M:%S')
        #puts "Desea continuar?"
        #opc = gets.chomp.to_i
        sleep(1)
    end
end

puts temporizador()