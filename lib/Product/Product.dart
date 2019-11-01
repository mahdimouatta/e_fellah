class Product {
  const Product({
    this.nom,
    this.description,
    this.review,
    this.stars,
    this.users,
    this.prix,
    this.imageLink,
  });

  final String nom;
  final int review;
  final int stars;
  final int users;
  final String description;
  final double prix;
  final String imageLink;
}
