require "./conta_bancaria"
require "./conta_bancaria_taxa"

conta_pessoa1 = ContaComTaxa.new("Jullia",5000)
conta_pessoa2 = ContaBancaria.new("Juliana",100)

conta_pessoa1.transferir(conta_pessoa2,100)

p conta_pessoa1.saldo
p conta_pessoa2.saldo

begin
    conta_pessoa1.transferir(conta_pessoa2,50000)
rescue StandardError => meu_erro
    p "Não foi possivel tranferir: #{meu_erro.message}"
end


p conta_pessoa1.saldo
p conta_pessoa2.saldo