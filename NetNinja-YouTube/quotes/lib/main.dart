import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  QuoteListState createState() => QuoteListState();
}

class QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Oscar Wilde')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
