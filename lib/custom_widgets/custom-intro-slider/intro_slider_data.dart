class SlidesData {
  final String? title;
  final String? des;
  const SlidesData({this.title, this.des});
}

class SlidesDatas {
  static List<SlidesData>? listofSlides() {
    const li = <SlidesData>[
      SlidesData(
          title: 'Welcome to WeDiscover',
          des:
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes'),
      SlidesData(
          title: 'What\'s special in WeDiscover',
          des:
              'Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of'),
    ];
    return li;
  }
}
