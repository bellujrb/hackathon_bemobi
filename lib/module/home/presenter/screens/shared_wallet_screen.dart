import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SharedWalletScreen extends StatelessWidget {
  const SharedWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        title: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.purple),
                  onPressed: () {
                    Modular.to.navigate("/");
                  },
                ),
                const SizedBox(width: 8),
                const Text(
                  'Carteiras compartilhadas',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Aqui você pode dividir seus pagamentos de forma\n'
              'automática e monitorada por IA 24h/dia',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                InkWell(
                  onTap: () => Modular.to.navigate("wallet-details"),
                  child: SizedBox(
                    width: 384,
                    height: 284,
                    child: Image.asset("assets/images/wallet-1.png"),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 384,
                  height: 284,
                  child: Image.asset("assets/images/wallet-2.png"),
                ),
              ],
            ),
          ),
          // Botão fixo "Criar nova"
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, // Cor do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                onPressed: () {
                  // Ação ao clicar no botão "Criar nova"
                },
                child: const Text(
                  'Criar nova',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Função para construir os cartões de carteira
  Widget _buildWalletCard({
    required String imagePath,
    required String title,
    required List<String> avatars,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 16,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 16,
            child: Row(
              children: avatars
                  .map((avatar) => Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage(avatar),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
