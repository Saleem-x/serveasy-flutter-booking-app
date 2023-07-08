class ServiceModel {
  final String name;
  final double price;
  final String description;
  final String imageUrl;
  final String id;

  ServiceModel(
    this.id, {
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}
