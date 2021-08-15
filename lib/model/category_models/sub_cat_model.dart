class SubCategoriesModel {
  SubCategoriesModel({
    required this.status,
    required this.data,
  });

  final String status;
  final List<SubCategoriesData> data;

  factory SubCategoriesModel.fromJson(Map<String, dynamic> json) =>
      SubCategoriesModel(
        status: json["status"],
        data: List<SubCategoriesData>.from(
            json["data"].map((x) => SubCategoriesData.fromJson(x))),
      );
}

class SubCategoriesData {
  SubCategoriesData({
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

  factory SubCategoriesData.fromJson(Map<String, dynamic> json) =>
      SubCategoriesData(
        id: json["id"],
        categoryName: json["category_name"],
        image: json["image"],
        parentId: json["parent_id"],
        status: json["status"],
        imageUrl: json["image_url"],
      );
}
