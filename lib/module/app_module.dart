import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackathon_bemobi/module/home/presenter/screens/details_wallet_screen.dart';
import 'package:hackathon_bemobi/module/home/presenter/screens/home_screen.dart';
import 'package:hackathon_bemobi/module/home/presenter/screens/shared_wallet_screen.dart';

class AppModule extends Module {

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeScreen()),
    ChildRoute('/wallet-shared', child: (context, args) => const SharedWalletScreen()),
    ChildRoute('/wallet-details', child: (context, args) => const WalletDetailsScreen())
  ];
}