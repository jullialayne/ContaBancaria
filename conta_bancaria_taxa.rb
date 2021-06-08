class ContaComTaxa < ContaBancaria
    def transferir(outra_conta, valor)
       
        super(outra_conta,valor)
        debitar(2)
    end 
end
