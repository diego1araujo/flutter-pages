class PageModel {
    final String title, text;

    PageModel({required this.title, required this.text});

    factory PageModel.fromJson(Map<String, dynamic> json) {
        return PageModel(
            title: json['title'],
            text: json['text'],
        );
    }
}
