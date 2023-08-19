import 'package:flutter/material.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: DashboardGrid(),
    );
  }
}

class DashboardGrid extends StatelessWidget {
  final List<DashboardItem> items = [
    DashboardItem(icon: Icons.dashboard, title: 'Item 1'),
    DashboardItem(icon: Icons.insert_chart, title: 'Item 2'),
    DashboardItem(icon: Icons.settings, title: 'Item 3'),
    DashboardItem(icon: Icons.person, title: 'Item 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return DashboardCard(item: items[index]);
      },
    );
  }
}

class DashboardItem {
  final IconData icon;
  final String title;

  DashboardItem({required this.icon, required this.title});
}

class DashboardCard extends StatelessWidget {
  final DashboardItem item;

  DashboardCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          // Handle card tap
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.icon, size: 48),
            SizedBox(height: 8),
            Text(item.title, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
