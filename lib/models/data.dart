// Model class for Building
class BuildingName {
  final String name;
  final String imageAsset;
  final String location;
  final String description;
  final String openDays;
  final String openTime;
  final String ticketPrice;
  final List<String> imageUrls;

  BuildingName({
    required this.name,
    required this.imageAsset,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageUrls,
  });
}

// List of buildings
final List<BuildingName> buildingList = [
  BuildingName(
    name: 'Burj Khalifa',
    imageAsset: 'assets/images/burj/Tiket Burj Khalifa Observation Deck di Dubai.jpg',
    location: 'Dubai, United Arab Emirates',
    description: 'The Burj Khalifa, completed in 2010, stands as the tallest building in the world at 828 meters. Designed by the architectural firm Adrian Smith + Gordon Gill Architecture, the Burj Khalifa’s sleek, futuristic design is inspired by the Hymenocallis flower. It features 163 floors above ground and includes office spaces, luxury residences, and the prestigious Armani Hotel. The observation decks on the 124th, 125th, and 148th floors offer unparalleled panoramic views of Dubai and beyond. The building’s state-of-the-art engineering incorporates high-performance glass to withstand Dubai’s extreme temperatures and wind loads.',
    openDays: 'Daily',
    openTime: '8:30 AM - 11:00 PM',
    ticketPrice: 'AED 379',
    imageUrls: [
      'assets/images/burj/ilustrasi-gedung-paling-tinggi-di-dunia_169.jpeg',
      'assets/images/burj/burj-khalifa-tour-1.webp',
      'assets/images/burj/61d4fbef2350a.jpg',
    ],
  ),
  BuildingName(
    name: 'Shanghai Tower',
    imageAsset: 'assets/images/shanghai/project_shanghai-tower_1024x576_08_1444153208_1024x576.jpg',
    location: 'Shanghai, China',
    description: 'The Shanghai Tower, completed in 2015, is the tallest building in China and the second tallest globally, reaching 632 meters. Its design by the architectural firm Gensler features a unique twisting structure, which not only enhances its aesthetic appeal but also reduces wind loads and improves stability. The tower houses office spaces, a hotel, and retail outlets. It is renowned for its double-skin facade and green design, which includes energy-saving technologies and water recycling systems. The observation deck on the 118th floor offers spectacular views of Shanghai and the Yangtze River Delta.',
    openDays: 'Daily',
    openTime: '8:30 AM - 10:00 PM',
    ticketPrice: 'CNY 250',
    imageUrls: [
      'assets/images/shanghai/maxresdefault (1).jpg',
      'assets/images/shanghai/Jin-Mao-Tower-Shanghai-tower-Shanghai-World-Financial-Center-and-river-quay.jpg',
      'assets/images/shanghai/16570986821949.webp',
    ],
  ),
  BuildingName(
    name: 'Abraj Al Bait Clock Tower',
    imageAsset: 'assets/images/mecca/menara abarat.jpg',
    location: 'Mecca, Saudi Arabia',
    description: 'The Abraj Al Bait Clock Tower, completed in 2012, is part of a large government-owned complex that includes several high-rise buildings. Standing at 601 meters, it is distinguished by its massive clock face, which is the largest in the world. The tower’s design incorporates traditional Islamic architectural motifs, including a crescent-shaped spire that reflects the religious significance of the site. The complex is located adjacent to the Masjid al-Haram and includes luxury hotels, shopping centers, and residential apartments. The clock tower serves as a focal point for the Hajj pilgrimage and features a large prayer room and observation decks.',
    openDays: 'Daily',
    openTime: '6:00 AM - 9:00 PM',
    ticketPrice: 'Free access to the clock tower area.',
    imageUrls: [
      'assets/images/mecca/mekkah-hotel-clock-tower-1-1024x576.jpg',
      'assets/images/mecca/Abraj-Al-Bait-Towers-840x450.jpg',
      'assets/images/mecca/Abraj Al bait.jpg',
    ],
  ),
  BuildingName(
    name: 'Ping An Finance Centre',
    imageAsset: 'assets/images/ping/ping-an-hero-3-scaled.webp',
    location: 'Shenzhen, China',
    description: 'The Ping An Finance Centre, completed in 2017, is a striking 599-meter tall skyscraper that houses office spaces, a luxury hotel, and residential units. Designed by the architectural firm Kohn Pedersen Fox Associates, its sleek and modern design features a tapered spire that contributes to its impressive height. The building’s design emphasizes verticality and includes a series of setbacks that create a dynamic silhouette. The observation deck offers stunning views of Shenzhen and the surrounding region. The tower is part of a larger urban development project that aims to transform the area into a major financial hub.',
    openDays: 'Daily',
    openTime: '10:00 AM - 9:00 PM',
    ticketPrice: 'CNY 180',
    imageUrls: [
      'assets/images/ping/2100_PingAn_Hero2021-scaled.webp',
      'assets/images/ping/241447039.jpg',
      'assets/images/ping/PAFC_Overall_(c)PingAnFinanceCenter.jpg',
    ],
  ),
  BuildingName(
    name: 'Lotte World Tower',
    imageAsset: 'assets/images/lotte/Lotte-World-Tower-Seoul-Header-3-2-1920x1080px.jpg',
    location: 'Seoul, South Korea',
    description: 'The Lotte World Tower, completed in 2016, stands as the tallest building in South Korea at 555 meters. Designed by the architectural firm Kohn Pedersen Fox Associates, the tower features a sleek, tapered design that integrates elements of traditional Korean architecture. It includes retail spaces, a luxury hotel, office areas, and residential units. The observation decks offer panoramic views of Seoul and the surrounding areas. The tower also features a glass-bottomed observation deck on the 118th floor, providing a thrilling experience for visitors.',
    openDays: 'Daily',
    openTime: '10:00 AM - 10:00 PM',
    ticketPrice: 'KRW 27,000',
    imageUrls: [
      'assets/images/lotte/Lotte-World-Mall-Seoul.jpg',
      'assets/images/lotte/Lotte-Tower.jpg',
      'assets/images/lotte/1769_1_000_N276_lotte-corporation.webp',
    ],
  ),
  BuildingName(
    name: 'One World Trade Center',
    imageAsset: 'assets/images/one/video-placeholder.jpg',
    location: 'New York City, USA',
    description: 'One World Trade Center, also known as the Freedom Tower, is the main building of the rebuilt World Trade Center complex in New York City. Completed in 2013, it reaches a height of 541 meters, including its spire. Designed by architect David Childs of Skidmore, Owings & Merrill, the building’s design incorporates advanced safety features and a modern, reflective glass facade. It houses office spaces and an observation deck on the 100th to 102nd floors, offering breathtaking views of the Manhattan skyline and beyond. The building is a symbol of resilience and recovery following the September 11 attacks.',
    openDays: 'Daily',
    openTime: '9:00 AM - 9:00 PM',
    ticketPrice: 'USD 43',
    imageUrls: [
      'assets/images/one/one-world-trade-center.webp',
      'assets/images/one/dsc_5921_retouch-1.jpeg',
      'assets/images/one/1WTC_Credit-Michael-Mahesh-PANYNJ.jpg',
    ],
  ),
];
