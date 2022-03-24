class MyDays {
  final String title;
  final int id;
  bool selected;

  MyDays({this.title, this.id, this.selected});
}

List<MyDays> workersDays = [
  MyDays(id: 0, selected: false, title: 'السبت'),
  MyDays(id: 1, selected: false, title: 'الأحد'),
  MyDays(id: 2, selected: false, title: 'الاثنين'),
  MyDays(id: 3, selected: false, title: 'الثلاثاء'),
  MyDays(id: 4, selected: false, title: 'الأربعاء'),
  MyDays(id: 5, selected: false, title: 'الخميس'),
  MyDays(id: 6, selected: false, title: 'الجمعه'),
];
