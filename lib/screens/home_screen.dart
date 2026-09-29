import 'package:flutter/material.dart';

import '../data/movies_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Movie Watchlist',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: sampleMovies.length,
          itemBuilder: (context, index) {
            final movie = sampleMovies[index];

            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              elevation: 3,
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),

                // Display the movie title.
                title: Text(
                  movie.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // Shows the user that each movie can be tapped.
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 28,
                ),

                // Pass the selected Movie object to DetailsScreen.
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        movie: movie,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}