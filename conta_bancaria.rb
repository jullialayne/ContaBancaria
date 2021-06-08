class ContaBancaria
    def initialize(proprietario,valor_inicial)
        @proprietario = proprietario
        @valor = valor_inicial
    end
    def transferir(outra_conta, valor)
        if saldo >= valor
            debitar(valor)
            outra_conta.depositar(valor)
        else
            raise "Não consegue transferir"
        end
    end
    def saldo
        @valor
    end

    private 
    def debitar(valorDebitar)
        @valor -=valorDebitar
    end

    protected
    def depositar(valorDepositar)
        @valor += valorDepositar
    end
end