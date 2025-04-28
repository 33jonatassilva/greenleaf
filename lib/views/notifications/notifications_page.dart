import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'title': 'Novo serviço disponível',
      'message': 'Um novo serviço na sua área foi publicado',
      'time': '10 min atrás'
    },
    {
      'title': 'Pagamento confirmado',
      'message': 'Seu pagamento foi processado com sucesso',
      'time': '1 hora atrás'
    },
    {
      'title': 'Atualização do sistema',
      'message': 'Nova versão do app disponível',
      'time': 'Ontem'
    },
    {
      'title': 'Bem-vindo!',
      'message': 'Obrigado por se cadastrar em nosso app',
      'time': '2 dias atrás'
    },
  ];

  NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificações'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              // Ação para marcar todas como lidas
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notificações marcadas como lidas')),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: const Icon(Icons.notifications, color: Colors.blue),
              title: Text(notification['title']!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notification['message']!),
                  const SizedBox(height: 4),
                  Text(
                    notification['time']!,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.close, size: 20),
                onPressed: () {
                  // Ação para remover a notificação
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Notificação "${notification['title']}" removida')),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}