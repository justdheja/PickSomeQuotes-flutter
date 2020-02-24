import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  final Function pick;
  QuoteCard({ this.quote, this.delete, this.pick });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[900]
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[900]
              ),
            ),
            SizedBox(height: 8.0,),
            Row(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: delete,
                  label: Text('Delete Quote'),
                  icon: Icon(
                    Icons.delete
                  ),
                ),
                FlatButton.icon(
                  onPressed: pick,
                  label: Text('Select'),
                  icon: Icon(
                    Icons.mouse
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

