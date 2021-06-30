final contacts = <String>[
  'Marco Franco',
  'Raul Alday',
  'Jessica Alba',
  'Roger Waters',
  'Darth Vader',
  'Homer Simpson',
  'Bill Gates',
  'Elon Musk',
  'Enrique Peña',
  'Angeles Rodriguez',
  'Monica Alvarado',
  'Estrella Fugaz',
  'Juana Lopez',
  'Jeff Bezos',
  'Bernard Arnault',
  'Warren Buffett',
  'Mark Zuckerberg',
  'Amancio Ortega',
  'Carlos Slim Helu & family',
  'Sergey Brin',
  'Larry Page',
  'Mukesh Ambani',
  'Steve Ballmer',
  'Alice Walton',
  'Michael Bloomberg',
  'Jim Walton',
  'Francoise Bettencourt Meyers',
  'Bertrand Puech & family',
  'Robson Walton',
  'Larry Ellison',
  'Phil Knight',
  'Ma Yun & Family',
  'Francois Pinault & family',
  'Ma Huateng',
  'MacKenzie Bezos',
  'Charles Koch',
  'Julia Koch & family',
  'David Thomson & family',
  'Jacqueline Mars'
];

Map<String, List> elements;


filterData(list){

  elements =  {
    'A': [],
    'B': [],
    'C': [],
    'D': [],
    'E': [],
    'F': [],
    'G': [],
    'H': [],
    'I': [],
    'J': [],
    'K': [],
    'L': [],
    'M': [],
    'N': [],
    'O': [],
    'P': [],
    'Q': [],
    'R': [],
    'S': [],
    'T': [],
    'U': [],
    'V': [],
    'W': [],
    'X': [],
    'Y': [],
    'Z': [],
  };

  list.forEach((item) {
    elements[item[0].toUpperCase()].add(item);
  });

}