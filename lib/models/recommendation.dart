class RecommendedModel {
  String name;
  String image;
  RecommendedModel(this.name, this.image);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['image']))
    .toList();

var recommendationsData = [
  {"name": "School", "image": "assets/images/sim.png"},
  {"name": "Community", "image": "assets/images/sim.png"},
  {"name": "Admin", "image": "assets/images/sim.png"},
  {"name": "Some heading", "image": "assets/images/sim.png"},
];
