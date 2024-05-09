

/* Andrey Nardy - 2BI 231126 - A */


public class ContaCantina {
    private TipoContaEnum tipoConta;
    private double saldo;
    private double limite;
    private double saldoMinimo;
    public void setTipoConta(TipoContaEnum tipoConta) {
        this.tipoConta = tipoConta;
    }
    public void emetirAlertaSaldoBaixo() {
        if (saldo <= saldoMinimo) {
            System.out.println("ALERTA DE SALDO BAIXO: R$ 15.00");
        } else {
            System.out.println("Saldo: R$ 15.00");
        }

    }
    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }

    public void setSaldoMinimo(Double saldoMinimo) {
        this.saldoMinimo = saldoMinimo;
        emetirAlertaSaldoBaixo();
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }

    public void debitar(double valor) {
        if (getTipoConta() == TipoContaEnum.DIRETOR && getTipoConta() == TipoContaEnum.PROFESSOR && getSaldo() > valor) {
            setSaldo(valor - getSaldo());
        } else {
            System.out.println("Conta com saldo insuficiente");
        }
    }

    public void creditar(double valor) {
        if(getTipoConta() == TipoContaEnum.ALUNO){
            if(getSaldo() > 100.0){
                setSaldo(valor + getSaldo() + 5);
            }
        }
        setSaldo(valor + getSaldo());
    }

    public double getSaldo() {
        return saldo;
    }

    public TipoContaEnum getTipoConta() {
        return tipoConta;
    }
}