import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WalletDetailsScreen extends StatelessWidget {
  const WalletDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.purple),
              onPressed: () {
                Modular.to.navigate("wallet-shared");
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Ação do botão calendário
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[50], // Cor de fundo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Text(
                'CALENDÁRIO',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Card principal com a imagem de "Estudos de Olivia"
              SizedBox(
                height: 422,
                width: 422,
                child: Image.asset(
                  'assets/images/details.png', // Substitua pelo caminho da imagem real
                ),
              ),
              const SizedBox(height: 30),
              // Seção "Visão geral do mês"
              const Text(
                'Visão geral do mês:',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Mensalidade escolar',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Vence em três dias',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),

              // Barra de progresso
              Stack(
                children: [
                  Container(
                    height: 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width *
                        0.6, // 60% de progresso
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Botão "Pagar"
              ElevatedButton(
                onPressed: () {
                  _showConfirmationDialog(
                      context); // Mostra o modal de confirmação
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[50], // Cor de fundo
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                ),
                child: const Text(
                  'Pagar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Botões "Dashboard e insights" e "Acordos e Negociações"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Ação do botão Dashboard
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.grey),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      icon: const Icon(Icons.dashboard, color: Colors.black),
                      label: const Text(
                        'Dashboard e insights',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Ação do botão Acordos e Negociações
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      icon: const Icon(Icons.handshake, color: Colors.white),
                      label: const Text(
                        'Acordos e Negociações',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Função para exibir o modal de confirmação
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            'Você já pagou a sua parte.',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: const Text(
            'Tem certeza que deseja pagar a dívida de Rogério?',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            // Botão "Sim, tenho certeza."
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Fechar o modal
                  // Adicione a lógica de pagamento aqui
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[50], // Cor de fundo do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: const Text(
                  'Sim, tenho certeza.',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ),
            // Link "Não, cancelar."
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Fechar o modal
                },
                child: const Text(
                  'Não, cancelar.',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
