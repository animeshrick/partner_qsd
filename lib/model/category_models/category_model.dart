class CategoriesModel {
  CategoriesModel({
    required this.status,
    required this.catData,
  });

  final String status;
  final List<CategoriesData> catData;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      CategoriesModel(
        status: json["status"],
        catData: List<CategoriesData>.from(
            json["data"].map((x) => CategoriesData.fromJson(x))),
      );
}

class CategoriesData {
  CategoriesData({
    required this.id,
    required this.categoryName,
    required this.image,
    required this.parentId,
    required this.status,
    required this.imageUrl,
  });

  final int id;
  final String categoryName;
  final String image;
  final int parentId;
  final String status;
  final String imageUrl;

  factory CategoriesData.fromJson(Map<String, dynamic> json) => CategoriesData(
        id: json["id"],
        categoryName: json["category_name"],
        image: json["image"],
        parentId: json["parent_id"],
        status: json["status"],
        imageUrl: json["image_url"],
      );
}
