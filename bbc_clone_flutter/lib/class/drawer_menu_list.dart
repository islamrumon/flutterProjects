
class Cat{
  String title;
  List<Cat> children;
  Cat(this.title, [this.children = const <Cat>[]]);
}


List<Cat> listOfTiles = <Cat>[
  new Cat(
    'Animals',
    <Cat>[
      new Cat(
        'Dogs',
        <Cat>[
          new Cat('Coton de Tulear'),
          new Cat('German Shepherd'),
          new Cat('Poodle'),
        ],
      ),
      new Cat('Cats'),
      new Cat('Birds'),
    ],
  ),
  new Cat(
    'Cars',
    <Cat>[
      new Cat('Tesla'),
      new Cat('Toyota'),
    ],
  ),
  new Cat(
    'Phones',
    <Cat>[
      new Cat('Google'),
      new Cat('Samsung'),
      new Cat(
        'OnePlus',
        <Cat>[
          new Cat('1'),
          new Cat('2'),
          new Cat('3'),
          new Cat('4'),
          new Cat('5'),
          new Cat('6'),
          new Cat('7'),
          new Cat('8'),
          new Cat('9'),
          new Cat('10'),
          new Cat('11'),
          new Cat('12'),
        ],
      ),
    ],
  ),
];