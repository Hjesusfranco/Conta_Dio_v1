# Sistema Bancário - Desafio DIO

def depositar(valor, saldo, extrato):
    if valor > 0:
        saldo += valor
        extrato += f"Depósito: R$ {valor:.2f}\n"
        print(f"✅ Depósito de R$ {valor:.2f} realizado com sucesso!")
    else:
        print("❌ Valor inválido para depósito.")
    return saldo, extrato


def sacar(valor, saldo, extrato, limite, numero_saques, limite_saques):
    if numero_saques >= limite_saques:
        print("❌ Limite de saques diários atingido.")
    elif valor > limite:
        print("❌ O valor do saque excede o limite permitido.")
    elif valor > saldo:
        print("❌ Saldo insuficiente.")
    elif valor > 0:
        saldo -= valor
        extrato += f"Saque: R$ {valor:.2f}\n"
        numero_saques += 1
        print(f"✅ Saque de R$ {valor:.2f} realizado com sucesso!")
    else:
        print("❌ Valor inválido para saque.")
    return saldo, extrato, numero_saques


def exibir_extrato(saldo, extrato):
    print("\n=========== EXTRATO ===========")
    print("Não foram realizadas movimentações." if not extrato else extrato)
    print(f"\nSaldo atual: R$ {saldo:.2f}")
    print("===============================")


def main():
    saldo = 0
    limite = 500
    extrato = ""
    numero_saques = 0
    limite_saques = 3

    while True:
        print("""
====== MENU ======
[d] Depositar
[s] Sacar
[e] Extrato
[q] Sair
==================
""")
        opcao = input("Escolha uma opção: ").lower()

        if opcao == "d":
            valor = float(input("Valor do depósito: R$ "))
            saldo, extrato = depositar(valor, saldo, extrato)

        elif opcao == "s":
            valor = float(input("Valor do saque: R$ "))
            saldo, extrato, numero_saques = sacar(
                valor, saldo, extrato, limite, numero_saques, limite_saques
            )

        elif opcao == "e":
            exibir_extrato(saldo, extrato)

        elif opcao == "q":
            print("🏦 Obrigado por utilizar nosso banco. Até logo!")
            break

        else:
            print("❌ Opção inválida, tente novamente.")


# Executar o programa
main()
