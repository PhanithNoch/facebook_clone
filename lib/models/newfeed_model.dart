class NewfeedModel {
  final String fullName;
  final String profileUrl;
  final String caption;
  final String photo;
  final String date;

  NewfeedModel({
    required this.fullName,
    required this.profileUrl,
    required this.caption,
    required this.photo,
    required this.date,
  });
}

// data\
List<NewfeedModel> lstNewfeed = [
  NewfeedModel(
      fullName: "Random Names",
      profileUrl:
          "https://cdn.pixabay.com/photo/2020/03/17/12/01/vietnam-4940054_960_720.jpg",
      caption: "TodaY, I'm so happy that i can meet with my crush",
      photo:
          "https://cdn.pixabay.com/photo/2020/03/17/12/01/vietnam-4940054_960_720.jpg",
      date: "2h ago"),
  NewfeedModel(
      fullName: "Random Names",
      profileUrl:
          "https://image.freepik.com/free-photo/smiling-cute-girl-looking-out-from-tree-trunk-outdoors_23-2148201660.jpg",
      caption: "TodaY, I'm so happy that i can meet with my crush",
      photo:
          "https://image.freepik.com/free-photo/smiling-cute-girl-looking-out-from-tree-trunk-outdoors_23-2148201660.jpg",
      date: "2h ago"),
  NewfeedModel(
      fullName: "Random Names",
      profileUrl:
          "https://cdn.pixabay.com/photo/2020/03/17/12/02/vietnam-4940068_1280.jpg",
      caption: "TodaY, I'm so happy that i can meet with my crush",
      photo:
          "https://cdn.pixabay.com/photo/2020/03/17/12/02/vietnam-4940068_1280.jpg",
      date: "2h ago")
];
