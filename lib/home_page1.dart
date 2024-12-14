import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista com os dados completos das criptomoedas fornecidas
  final List<Map<String, dynamic>> cryptoData = [
    {
      'imageUrl': 'https://cryptologos.cc/logos/bitcoin-btc-logo.png',
      'title': 'Bitcoin',
      'description': 'Criptomoeda descentralizada',
      'price': 659.32,
      'details':
      'O Bitcoin é a primeira criptomoeda descentralizada criada no mundo. Lançado em 2009, ele usa a tecnologia blockchain para garantir segurança e transparência.'
    },
    {
      'imageUrl': 'https://cryptologos.cc/logos/ethereum-pow-ethw-logo.png',
      'title': 'Ethereum',
      'description': 'Plataforma de contratos inteligentes',
      'price': 400.55,
      'details':
      'Ethereum é uma plataforma descentralizada que permite a criação de contratos inteligentes e aplicativos descentralizados (DApps).'
    },
    {
      'imageUrl': 'https://cryptologos.cc/logos/tether-usdt-logo.png',
      'title': 'Tether',
      'description': 'Stablecoin atrelada ao dólar',
      'price': 123.45,
      'details':
      'Tether é uma stablecoin que mantém um valor estável, geralmente atrelado ao dólar americano. Ideal para transações digitais seguras.'
    },
    {
      'imageUrl': 'https://cryptologos.cc/logos/bnb-bnb-logo.png',
      'title': 'BNB',
      'description': 'Moeda da Binance',
      'price': 567.89,
      'details':
      'BNB é a criptomoeda da Binance, uma das maiores exchanges do mundo. É usada para taxas de transação e outros serviços.'
    },
    {
      'imageUrl': 'https://cdn-icons-png.flaticon.com/512/6001/6001527.png',
      'title': 'USD Coin',
      'description': 'Stablecoin regulada',
      'price': 789.10,
      'details':
      'USD Coin (USDC) é uma stablecoin regulada que está atrelada ao dólar americano. Amplamente usada em transações financeiras.'
    },
    {
      'imageUrl':
      'https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-usd-coin-usdc-digital-stablecoin-icon-technology-pay-web-vector-png-image_37843734.png',
      'title': 'Ripple',
      'description': 'Protocolo de pagamento',
      'price': 234.56,
      'details':
      'Ripple (XRP) é uma criptomoeda projetada para facilitar pagamentos internacionais de forma rápida e com baixo custo.'
    },
    {
      'imageUrl':
      'https://static.vecteezy.com/system/resources/previews/024/093/519/original/xrp-glass-crypto-coin-3d-illustration-free-png.png',
      'title': 'Cardano',
      'description': 'Blockchain sustentável',
      'price': 345.67,
      'details':
      'Cardano (ADA) é uma plataforma de blockchain que utiliza o algoritmo Proof of Stake (PoS), sendo uma das mais sustentáveis.'
    },
    {
      'imageUrl':
      'https://upload.wikimedia.org/wikipedia/pt/d/d0/Dogecoin_Logo.png',
      'title': 'Dogecoin',
      'description': 'Moeda meme famosa',
      'price': 456.78,
      'details':
      'Dogecoin começou como uma piada, mas rapidamente se tornou uma das criptomoedas mais populares, especialmente graças ao apoio da comunidade.'
    },
    {
      'imageUrl': 'https://cdn-icons-png.flaticon.com/512/12114/12114250.png',
      'title': 'Polkadot',
      'description': 'Rede de blockchain interoperável',
      'price': 567.89,
      'details':
      'Polkadot (DOT) é uma rede que conecta diferentes blockchains, permitindo que elas trabalhem juntas de forma segura e escalável.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
        title: Text(
          'Preços de criptomoedas',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cryptoData.length,
        itemBuilder: (context, index) {
          final crypto = cryptoData[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/homePage2',
                  arguments: crypto,
                );
              },
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          crypto['imageUrl'],
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              crypto['title'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              crypto['description'],
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'R\$${crypto['price'].toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}