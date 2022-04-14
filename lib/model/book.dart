enum ByAge{
  Kids,
  Teen,
  Adult
}

enum ByRate{
  Good,
  Bestseller,
  Recommended

}

class Book{
  final String id;
  final List<String> genre;
  final String title;
  final String imgUrl;
  final ByAge byAge;
  final ByRate byRate;
  final String author;
  final String dateRelease;
  final String content;


  Book({
    required this.id,
    required this.title,
    required this.genre,
    required this.imgUrl,
    required this.byAge,
    required this.byRate,
    required this.author,
    required this.dateRelease,
    required this.content
});

}
var books= [
  Book(
      id: 'b1',
      title: 'Six Crimson of Cranes',
      genre: ['fiction', 'fantasy','romance'],
      imgUrl: 'https://kbimages1-a.akamaihd.net/9a368239-658a-4799-a167-341a53812e06/1200/1200/False/six-crimson-cranes.jpg',
      byAge: ByAge.Teen,
      byRate: ByRate.Bestseller,
      author: "Elizabeth Lim",
      dateRelease: "2021",
      content: " Shiori'anma, the only princess of Kiata, has a secret. Forbidden magic runs in her veins. And on the morning of her betrothal ceremony, Shiori loses control. At first, her mistake seems like a stroke of luck, forestalling the wedding she never wanted, but it also catches the attention of Raikama, her stepmother. A sorceress in her own right, Raikama banishes the young princess, turning her brothers into cranes, and warning Shiori that she must speak of it to no one: for with every word that escapes her lips, one of her brothers will die.Penniless, voiceless, and alone, Shiori searches for her brothers, and uncovers a dark conspiracy to seize the throne. Only Shiori can set the kingdom to rights, but to do so she must place her trust in a paper bird, a mercurial dragon, and the very boy she fought so hard not to marry. And she must embrace the magic she's been taught all her life to contain - no matter what it costs."
  ),
  Book(
      id: 'b2',
      title: 'Spin the Dawn',
      genre: ['fiction', 'fantasy','romance'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/71e6cV4KG1L.jpg',
      byAge: ByAge.Teen,
      byRate: ByRate.Bestseller,
      author: "Elizabeth Lim",
      dateRelease: "2021",
      content: "Project Runway meets Mulan in this sweeping YA fantasy about a young girl who poses as a boy to compete for the role of imperial tailor and embarks on an impossible journey to sew three magic dresses, from the sun, the moon, and the stars. "
  ),
  Book(
      id: 'b3',
      title: 'Unravel the Dusk',
      genre: ['fiction', 'fantasy','romance'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/712sz7nc26L.jpg',
      byAge: ByAge.Teen,
      byRate: ByRate.Bestseller,
      author: "Elizabeth Lim",
      dateRelease: "2021",
      content: " Where Spin the Dawn was an exciting three-part adventure to capture the sun, the moon and the stars, Unravel the Dusk is an introspective journey of Maia coming to terms with her magic and her fall into becoming a demon. And her sacrifice and salvation; in love, family and fate. "
  ),
  Book(
      id: 'b4',
      title: 'The Dragon`s Promise',
      genre: ['fiction', 'fantasy','romance'],
      imgUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1645616383l/53457102._SY475_.jpg',
      byAge: ByAge.Teen,
      byRate: ByRate.Bestseller,
      author: "Elizabeth Lim",
      dateRelease: "2021",
      content: "She must journey to the kingdom of dragons, navigate political intrigue among humans and dragons alike, fend off thieves who covet the pearl for themselves and will go to any lengths to get it, all while cultivating the appearance of a perfect princess to dissuade those who would see her burned at the stake for the magic that runs in her blood."
  ),
  Book(
      id: 'b5',
      title: 'Cinder',
      genre: ['sci-fi', 'fantasy','romance'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/81WbBVgtVNL.jpg',
      byAge: ByAge.Adult,
      byRate: ByRate.Recommended,
      author: "Marissa Meyer",
      dateRelease: "2012",
      content: "Cinder, a gifted mechanic, is a cyborg. She's a second-class citizen with a mysterious past, reviled by her stepmother and blamed for her stepsis. A deadly plague ravages the population. From space, a ruthless Lunar people watch, waiting to make their move. "
  ),
  Book(
      id: 'b6',
      title: 'Scarlet',
      genre: ['sci-fi', 'fantasy','romance'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/81Z8m65u43L.jpg',
      byAge: ByAge.Teen,
      byRate: ByRate.Bestseller,
      author: "Marissa Meyer",
      dateRelease: "2013",
      content: "Scarlet Benoit is an 18-year-old redhead living on her grandmother's farm in Rieux, France. Scarlet's grandmother Michelle Benoit has gone missing. Scarlet is worried and determined to find out what happened to her. While the police think Michelle left on her own, Scarlet knows her grandmother wouldn't do that. "
  ),
  Book(
      id: 'b7',
      title: 'Cress',
      genre: ['sci-fi', 'fantasy','romance'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/91bCv42hrVL.jpg',
      byAge: ByAge.Adult,
      byRate: ByRate.Recommended,
      author: " Marissa Meyer",
      dateRelease: "2014",
      content: "Cress is a Lunar, stuck on a satellite orbiting Earth. Her mission from the Lunars who exiled her is to collect information on those on Earth who threaten Lunar and its inhabitants, including Cinder and her crew. Cress's own mission, however, is to find a way to get to Earth and save Cinder from Queen Levana."
  ),
  Book(
      id: 'b8',
      title: 'Winter',
      genre:  ['sci-fi', 'fantasy','romance'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/81vZWvKZypL.jpg',
      byAge: ByAge.Adult,
      byRate: ByRate.Good,
      author: "Marissa Meyer",
      dateRelease: "2015",
      content: "Princess Winter is admired by the Lunar people for her grace and kindness, and despite the scars that mark her face. Winter despises her stepmother, and knows Levana won't approve for her childhood friend--the palace guard, Jacin."
  ),
  Book(
      id: 'b9',
      title: 'Star\'s Above',
      genre:  ['sci-fi', 'fantasy','romance'],
      imgUrl: 'http://prodimage.images-bn.com/pimages/9781250774064_p0_v3_s1200x630.jpg',
      byAge: ByAge.Adult,
      byRate: ByRate.Good,
      author: "Marissa Meyer",
      dateRelease: "2015",
      content: "Carswell's Guide to Being Lucky: Thirteen-year-old Carswell Thorne has big plans involving a Rampion spaceship and a no-return trip out of Los Angeles. After Sunshine Passes By: In this prequel to Cress, we see how a nine-year-old Cress ended up alone on a satellite, spying on Earth for Luna."
  ),
  Book(
      id: 'b10',
      title: 'Fairest',
      genre:  ['sci-fi', 'fantasy','romance'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/51PL-URwwRL._SX331_BO1,204,203,200_.jpg',
      byAge: ByAge.Adult,
      byRate: ByRate.Recommended,
      author: "Marissa Meyer",
      dateRelease: "2015",
      content: "Fairest is a prequel to the events in the Lunar Chronicles series. It tells the story of Queen Levana and how she got where she is and how she became to evil. There are moments when you feel sorry for her but when given a chance to redeem herself, she never does."
  ),
  Book(
      id: 'b11',
      title: 'Miss peregrine \'s home for peculiar children',
      genre:  ['fiction', 'mystery','classic'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/91ihKfXcqiL.jpg',
      byAge: ByAge.Kids,
      byRate: ByRate.Recommended,
      author: "Ransom Riggs",
      dateRelease: "2016",
      content: "Jacob Portman believes he is ordinary and is fascinated with his extraordinary grandfather, Abraham Portman, during his childhood years. Grandpa Portman introduces Jacob to interesting stories about monsters and unusual pictures of peculiar children. As a child, Abraham escaped Nazi Germany to Wales, where he lived in a house with other children under the guidance of Headmistress Peregrine.",
  ),
  Book(
      id: 'b12',
      title: 'Library of Souls',
      genre:  ['fiction', 'mystery','classic'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/91GXC09xGBL.jpg',
      byAge: ByAge.Adult,
      byRate: ByRate.Recommended,
      author: "Ramson Riggs",
      dateRelease: "2018",
      content: "Synopsis. It focuses on Jacob Portman, Emma Bloom, and Addison MacHenry trying to save their friends. Jacob and Emma meet a man named Myron Bentham, who is Alma LeFay Peregrine and Caul's brother. They learn that Jacob is more than he seems and is likely the final key to the Library of Souls.",
  ),
  Book(
      id: 'b13',
      title: 'Hollow City',
      genre: ['fiction', 'mystery','classic'],
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/71-7IMwq21L.jpg',
      byAge: ByAge.Teen,
      byRate: ByRate.Bestseller,
      author: "Ransom Riggs",
      dateRelease: "2017",
      content: "Plot. After fleeing in a boat from the hollowgasts, the peculiar children are caught up in a bad storm and need to find land. They land on a beach only to find that the wights are trying to track them down, so they flee into the forests of the mainland.",
  ),
] ;