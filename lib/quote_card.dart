import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                quote.author,
                style: TextStyle(fontSize: 16, color: Colors.grey[400]),
              ),
              const SizedBox(
                height: 6,
              ),
              IconButton(
                  onPressed: delete as void Function()?,
                  icon: const Icon(Icons.delete))
            ],
          ),
        ));
  }
}
