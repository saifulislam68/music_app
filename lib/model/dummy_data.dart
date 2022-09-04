class DummyData {
  final List<Music> homePageSlider = [
    Music(
      title: 'Contrary to popular belief Lorem ringo ',
      author: 'Will pau',
      assetImage: 'assets/images/woman_singer.png',
    ),
    Music(
      title: 'Sometimes by royer accident sometimes ',
      author: 'Generate',
      assetImage: 'assets/images/man_singer.png',
    ),
  ];

  final List<Music> songCategory = [
    Music(
      text: 'Bangla',
    ),
    Music(
      text: 'English',
    ),
    Music(
      text: 'Hindi',
    ),
    Music(
      text: 'Tamil',
    ),
    Music(
      text: 'Indian',
    ),
    Music(
      text: 'pop',
    ),
    Music(
      text: 'Lalon',
    ),
  ];
  final List<Music> albumList = [
    Music(
      title: 'Accident ',
      track: '16 Track',
      assetImage: 'assets/images/album_artist1.png',
    ),
    Music(
      title: 'Girl like me',
      track: '50 Track',
      assetImage: 'assets/images/album_artist3.png',
    ),
    Music(
      title: 'Good and Evil ',
      track: "20 track",
      assetImage: 'assets/images/album_artist2.png',
    ),
  ];
  final List<Music> bookmark = [
    Music(
        title: 'Padma Bridge: US, India, Pakistan commend Bangladesh ...',
        author: 'Crypto',
        assetImage: 'assets/images/mondir.png',
        subtitle: 'By Ryan Browne . 26 june 2022'),
    Music(
        title: 'Padma Bridge: US, India, Pakistan commend Bangladesh ...',
        author: 'World',
        assetImage: 'assets/images/img11.png',
        subtitle: 'By Ryan Browne . 26 june 2022'),
  ];
  final List<Music> topics = [
    Music(
      title: 'Science',
      assetImage: 'assets/images/science.png',
    ),
    Music(
      title: 'Politics',
      assetImage: 'assets/images/politics.png',
    ),
    Music(
      title: 'Technology',
      assetImage: 'assets/images/technology.png',
    ),
    Music(
      title: 'Fashion',
      assetImage: 'assets/images/fashion.png',
    ),
    Music(
      title: 'Art',
      assetImage: 'assets/images/art.png',
    ),
    Music(
      title: 'Sport',
      assetImage: 'assets/images/sport.png',
    ),
    Music(
      title: 'Science',
      assetImage: 'assets/images/science.png',
    ),
    Music(
      title: 'Politics',
      assetImage: 'assets/images/politics.png',
    ),
  ];
}

class Music {
  String? title;
  String? author;
  String? assetImage;
  String? text1;
  String? text;
  String? text2;
  String? subtitle;
  String? track;

  Music(
      {this.text,
      this.title,
      this.author,
      this.assetImage,
      this.text1,
      this.text2,
      this.subtitle,
      this.track});
}
