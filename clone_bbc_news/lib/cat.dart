
class cat{
  String title;
  List<cat> children;
  cat(this.title, [this.children = const <cat>[]]);
}


List<cat> listOfTiles = <cat>[
  new cat(
    'Animals',
    <cat>[
      new cat(
        'Dogs',
        <cat>[
          new cat('Coton de Tulear'),
          new cat('German Shepherd'),
          new cat('Poodle'),
        ],
      ),
      new cat('Cats'),
      new cat('Birds'),
    ],
  ),
  new cat(
    'Cars',
    <cat>[
      new cat('Tesla'),
      new cat('Toyota'),
    ],
  ),
  new cat(
    'Phones',
    <cat>[
      new cat('Google'),
      new cat('Samsung'),
      new cat(
        'OnePlus',
        <cat>[
          new cat('1'),
          new cat('2'),
          new cat('3'),
          new cat('4'),
          new cat('5'),
          new cat('6'),
          new cat('7'),
          new cat('8'),
          new cat('9'),
          new cat('10'),
          new cat('11'),
          new cat('12'),
        ],
      ),
    ],
  ),
];