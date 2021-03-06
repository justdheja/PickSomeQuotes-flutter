import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotes_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Jon Snow', text: 'hello'),
    Quote(author: 'Jon Snow', text: 'yeay'),
    Quote(author: 'Jon Snow', text: 'hey'),
  ];


  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  String selectedQuote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text('Pick Some Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0,),
            Text('Selected Quote = $selectedQuote'),
            Column(
              children: quotes.map((quote) {
                return QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                  pick: () {
                    setState(() {
                      this.selectedQuote = quote.text;
                    });
                  }
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
