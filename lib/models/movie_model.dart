class Movie {
  String name;
  String imageUrl;
  String description;

  Movie({
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  // Factory method to create a Movie object from JSON
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      imageUrl: json['imageUrl'],
      description: json['description'],
    );
  }

  // Method to convert Movie object to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
    };
  }
}

class MovieCategory {
  List<Movie> bollywood;
  List<Movie> hollywood;

  MovieCategory({
    required this.bollywood,
    required this.hollywood,
  });

  // Factory method to create MovieCategory from JSON
  factory MovieCategory.fromJson(Map<String, dynamic> json) {
    var bollywoodList = json['Bollywood'] as List;
    var hollywoodList = json['Hollywood'] as List;

    return MovieCategory(
      bollywood: bollywoodList.map((e) => Movie.fromJson(e)).toList(),
      hollywood: hollywoodList.map((e) => Movie.fromJson(e)).toList(),
    );
  }

  // Method to convert MovieCategory to JSON
  Map<String, dynamic> toJson() {
    return {
      'Bollywood': bollywood.map((e) => e.toJson()).toList(),
      'Hollywood': hollywood.map((e) => e.toJson()).toList(),
    };
  }
}
