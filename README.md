# 💻 Desafio: Criando um Sistema Bancário (Dio)


## 🎯 Objetivo Geral
Criar um sistema bancário com as operações: **sacar**, **depositar** e **visualizar extrato**.

---

## 🧩 Desafio
Fomos contratados por um grande banco para desenvolver o seu novo sistema.  
Esse banco deseja modernizar suas operações e, para isso, escolheu a linguagem **Python**.  

Para a primeira versão do sistema, devemos implementar apenas 3 operações:  
- Depósito  
- Saque  
- Extrato

---

## 💰 Operação de Depósito
- Deve ser possível **depositar valores positivos** na conta bancária.  
- A versão inicial do projeto trabalha apenas com **um usuário**, portanto não é necessário identificar número de agência ou conta.  
- Todos os depósitos devem ser armazenados em uma **variável** e exibidos na operação de **extrato**.

---

## 💸 Operação de Saque
- O sistema deve permitir **3 saques diários**, com limite máximo de **R$ 500,00 por saque**.  
- Caso o usuário **não tenha saldo suficiente**, o sistema deve exibir uma mensagem informando que **não será possível sacar por falta de saldo**.  
- Todos os saques devem ser armazenados em uma **variável** e exibidos na operação de **extrato**.

---

## 📋 Operação de Extrato
- Essa operação deve listar **todos os depósitos e saques realizados na conta**.  
- No fim da listagem, deve ser exibido o **saldo atual da conta**.  
- Se o extrato estiver em branco, deve ser exibida a mensagem:  
  > "Não foram realizadas movimentações."  
- Os valores devem ser exibidos utilizando o formato **R$ xxx.xx**, exemplo:  
