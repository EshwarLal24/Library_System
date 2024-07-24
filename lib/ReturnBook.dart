import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Returnbook extends StatelessWidget {
  const Returnbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Return Book'),

        ),
      ),
      body: Row(
        children: [
          // Dashboard (placeholder)
          SizedBox(
            width: 0, // Adjust width as needed
            child: Container(
              color: Colors.grey, // Replace with actual dashboard content
            ),
          ),
          Expanded(
            child: Column(
              children: [
                // Centered heading

                // Search bar using Grid
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.1),
                  child: GridTile(
                    child: Container(
                      //    color: Colors.blue, // Add background color here
                      width: MediaQuery.of(context).size.width * 0.5, // Half the screen width
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search CNIC',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                        ),
                        maxLength: 13, // Adjust based on average word length (assuming 2 characters per word)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
