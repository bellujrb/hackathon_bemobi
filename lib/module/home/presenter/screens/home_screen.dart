import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        toolbarHeight: 0, // Remove o espaço extra da AppBar
      ),
      drawer: _buildDrawer(context), // Adiciona o Drawer
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header com a imagem de perfil e notificações
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Fundo roxo curvado
                Container(
                  height: 180,
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                // Ícone do menu no topo
                Positioned(
                  top: 40,
                  left: 20,
                  child: Builder(
                    builder: (context) {
                      return IconButton(
                        icon: const Icon(Icons.menu, color: Colors.white),
                        onPressed: () {
                          Scaffold.of(context)
                              .openDrawer(); // Garante que está no contexto certo
                        },
                      );
                    },
                  ),
                ),
                // Ícone de notificações no topo direito
                Positioned(
                  top: 40,
                  right: 20,
                  child: Stack(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.notifications,
                            color: Colors.white),
                        onPressed: () {
                          // Ação de notificação
                        },
                      ),
                      Positioned(
                        right: 6,
                        top: 6,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '22',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Imagem de perfil centralizada
                Positioned(
                    top:
                        130, // Posicionar a imagem para ficar sobre o fundo roxo e o branco
                    left: MediaQuery.of(context).size.width / 2 -
                        60, // Centraliza a imagem
                    child: SizedBox(
                      height: 122,
                      width: 122,
                      child: Image.asset('assets/images/person.png'),
                    )),
              ],
            ),
            const SizedBox(
                height: 80), // Ajusta o espaço após a imagem de perfil
            const Text(
              'Olá, Maria Carolina!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Confira a sua agenda de hoje!',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),

            // Carrossel de Imagens
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 180,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: const Duration(seconds: 3),
                ),
                items: [
                  'assets/images/image.png',
                  'assets/images/image.png',
                  'assets/images/image.png',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          i,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),

            // Seção de Acessos Rápidos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ACESSOS RÁPIDOS',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildQuickAccessButton('CARTEIRAS', Icons.wallet),
                      _buildQuickAccessButton('COMUNICADOS', Icons.chat),
                      _buildQuickAccessButton('AGENDA', Icons.calendar_today),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método auxiliar para criar o Drawer
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Cabeçalho do Drawer
          const UserAccountsDrawerHeader(
            accountName: Text("Maria Carolina"),
            accountEmail: Text("Turma G3 - Manhã"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.imgur.com/zFioSye.jpg'), // Substitua pela URL real da imagem
            ),
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
          ),

          // Itens do Drawer
          _buildDrawerItem(Icons.home, "Início", context),
          _buildDrawerItemWithNotification(
              Icons.message, "Mensagens", 2, context),
          _buildDrawerItemWithNotification(
              Icons.school, "Atividades", 2, context),
          _buildDrawerItem(Icons.calendar_today, "Resumo diário", context),
          _buildDrawerItem(Icons.announcement, "Comunicados", context),
          _buildDrawerItem(Icons.event, "Eventos", context),
          _buildDrawerItem(Icons.payment, "Pagamentos", context),
          _buildDrawerItem(Icons.photo, "Mural de fotos", context),
          _buildDrawerItem(
              Icons.notifications, "Central de notificações", context),
        ],
      ),
    );
  }

  // Método auxiliar para criar um item de menu no Drawer
  Widget _buildDrawerItem(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(title),
      onTap: () {},
    );
  }

  // Método auxiliar para criar um item de menu no Drawer com notificações
  Widget _buildDrawerItemWithNotification(IconData icon, String title,
      int notificationCount, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(title),
      trailing: CircleAvatar(
        radius: 12,
        backgroundColor: Colors.purple,
        child: Text(
          '$notificationCount',
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
      onTap: () {
        // Navegar para outra tela ou realizar alguma ação
        Navigator.pop(context);
      },
    );
  }

  // Método auxiliar para criar os botões de acesso rápido
  Widget _buildQuickAccessButton(String title, IconData icon) {
    return InkWell(
      onTap: () => Modular.to.navigate("wallet-shared"),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Icon(icon, color: Colors.purple, size: 40),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
