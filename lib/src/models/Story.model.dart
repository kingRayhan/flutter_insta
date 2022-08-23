class Story {
  Story({required this.handle, required this.imageUrl});

  factory Story.fromJson(Map<String, dynamic> json) =>
      Story(handle: json['handle'], imageUrl: json['imageUrl']);

  Map<String, String> toJson() => {
        'handle': handle,
        'imageUrl': imageUrl,
      };

  final String handle;
  final String imageUrl;
}
