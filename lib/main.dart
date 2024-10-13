import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Icon(Icons.account_circle, color: Colors.white),
        actions: [
          Icon(Icons.visibility, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.help_outline, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.email_outlined, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'R\$10000,00',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OptionButton(icon: Icons.pix, label: 'Área Pix'),
              OptionButton(icon: Icons.payment, label: 'Pagamentos'),
              OptionButton(icon: Icons.qr_code, label: 'QRCode'),
              OptionButton(icon: Icons.attach_money, label: 'Transferir'),
            ],
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Meus Cartões'),
                SizedBox(height: 8),
                Text(
                  'Guarde seu dinheiro em caixinhas',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text('Acessando a área de planejamento')
              ],
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            title: Text('Cartão de Crédito'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fatura Fechada'),
                Text('R\$2.123,39'),
                Text('Vencimento dia 15'),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text('Renegociar'),
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            title: Text('Empréstimo'),
            subtitle: Text('Tudo certo! Você está em dia'),
          ),
          SizedBox(height: 16),
          Text(
            'Descubra Mais',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/seguroVida.png'),
                  SizedBox(height: 8),
                  Text(
                    'Seguro de Vida',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('Cuide bem de quem você ama de um jeito simples'),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Conhecer',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  OptionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
