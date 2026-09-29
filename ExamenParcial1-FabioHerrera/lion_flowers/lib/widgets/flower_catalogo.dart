import 'package:flutter/material.dart';

class FlowerCatalogo extends StatelessWidget {
  const FlowerCatalogo({super.key});

  static const List<_Flower> _flowers = [
    _Flower('Camelias', '\$30', Color(0xFFFFD6DE), Icons.filter_vintage),
    _Flower('Dalias', '\$45', Color(0xFFFFE7A8), Icons.brightness_5),
    _Flower('Gardenias', '\$28', Color(0xFFFFC7D4), Icons.yard),
    _Flower('Hortensias', '\$40', Color(0xFFE4C7F5), Icons.emoji_nature),
    _Flower('Azucenas', '\$32', Color(0xFFFFE4C4), Icons.local_florist),
    _Flower('Magnolias', '\$22', Color(0xFFFFF2B8), Icons.brightness_7),
    _Flower('Violetas', '\$26', Color(0xFFDCCCF5), Icons.grass),
    _Flower('Amapolas', '\$36', Color(0xFFFFC9E1), Icons.spa),
    _Flower('Begonias', '\$24', Color(0xFFFFD2B8), Icons.eco),
    _Flower('Narcisos', '\$29', Color(0xFFE8F2D0), Icons.nature),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFFFFD6DE),
                    child: Icon(Icons.person, color: Color(0xFF8C3045)),
                  ),
                  const SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hola, bienvenid@',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Encuentra las mejores flores',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey.shade600,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                'Catálogo de flores',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _FlowerCard(flower: _flowers[index]),
                childCount: _flowers.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.78,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FlowerCard extends StatelessWidget {
  const _FlowerCard({required this.flower});

  final _Flower flower;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: flower.color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  flower.icon,
                  size: 58,
                  color: const Color(0xFF8C3045),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              flower.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              flower.price,
              style: const TextStyle(color: Color(0xFFE85D75)),
            ),
          ],
        ),
      ),
    );
  }
}

class _Flower {
  const _Flower(this.name, this.price, this.color, this.icon);

  final String name;
  final String price;
  final Color color;
  final IconData icon;
}
