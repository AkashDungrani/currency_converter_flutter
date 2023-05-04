class Globals {
  static String? from;
  static String? to;
  static bool isdark = false;
}

List<Map<String,dynamic>> favouritecountry = [];
List<Map<String, dynamic>> country = [
  {
    "from": "JPY",
    "to": "jpy",
    "Country": "Japan",
    "islike":false,
    "flag":
        "https://cdn.pixabay.com/photo/2012/04/10/22/59/japan-26803__480.png",
  },
  {
    "from": "INR",
    "to": "inr",
    "Country": "India",
    "islike": false,
    "flag":
        "https://img.freepik.com/free-vector/illustration-india-flag_53876-27130.jpg"
  },
  {
    "from": "AFN",
    "to": "afn",
    "Country": "Afghanistan",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/14/afghanistan-162218__480.png",
  },
  {
    "from": "ALL",
    "to": "all",
    "Country": "Albania",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2015/10/24/21/30/albania-1005017__480.png",
  },
  {
    "from": "USD",
    "to": "usd",
    "Country": "AMERICA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2012/04/10/16/22/united-26177__480.png",
  },
  // {
  //   "from": "EUR",
  //   "to": "eur",
  //   "Country": "ANDORRA",
  //   "islike": false,
  //   "flag":
  //       "https://cdn.pixabay.com/photo/2012/04/10/16/22/andorra-26172__480.png",
  // },
  {
    "from": "AOA",
    "to": "aoa",
    "Country": "ANGOLA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2012/04/10/23/18/angola-26945__480.png",
  },
  {
    "from": "XCD",
    "to": "xcd",
    "Country": "ANGUILLA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2012/04/10/23/24/anguilla-26992__480.png",
  },
  {
    "from": "ARS",
    "to": "ars",
    "Country": "ARGENTINA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/14/argentina-162229__480.png",
  },
  {
    "from": "AMD",
    "to": "amd",
    "Country": "ARMENIA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/14/armenia-162230__480.png",
  },
  {
    "from": "AWG",
    "to": "awg",
    "Country": "ARUBA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/14/aruba-162231__480.png",
  },
  {
    "from": "AUD",
    "to": "aud",
    "Country": "AUSTRALIA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/12/18/42/australia-153732__480.png",
  },
  {
    "from": "BHD",
    "to": "bhd",
    "Country": "BAHRAIN",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2015/11/04/14/12/flag-1022612__480.png",
  },
  {
    "from": "BDT",
    "to": "bdt",
    "Country": "BANGLADESH",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/14/bangladesh-162238__480.png",
  },
  {
    "from": "BBD",
    "to": "bbd",
    "Country": "BARBADOS",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/14/barbados-162239__480.png",
  },
  {
    "from": "BYN",
    "to": "byn",
    "Country": "BELARUS",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2015/11/12/15/52/flag-1040528__480.png",
  },
  // {
  //   "from": "EGP",
  //   "to": "egp",
  //   "Country": "EGYPT",
  //   "islike": false,
  //   "flag":
  //       "https://cdn.pixabay.com/photo/2012/04/10/23/13/egypt-26909__480.png",
  // },
  {
    "from": "XPF",
    "to": "xpf",
    "Country": "FRENCH POLYNESIA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/15/french-polynesia-162296__480.png",
  },
  {
    "from": "GMD",
    "to": "gmd",
    "Country": "GAMBIA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/15/gambia-162299__480.png",
  },
  {
    "from": "GEL",
    "to": "gel",
    "Country": "GEORGIA",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2012/04/10/23/04/georgia-26839__480.png",
  },
  {
    "from": "DKK",
    "to": "dkk",
    "Country": "GREENLAND",
    "islike": false,
    "flag":
        "https://cdn.pixabay.com/photo/2013/07/13/14/15/greenland-162305__480.png",
  },
  {
    "from": "HKD",
    "to": "hkd",
    "Country": "HONGKONG",
    "islike": false,
    "flag":
        "https://media.istockphoto.com/id/464082449/pl/zdjęcie/flaga-hongkongu.jpg?b=1&s=170667a&w=0&k=20&c=W9y33I40vNXgWKH4_rEGyGCLOxKEkUkP_OaeZzPjX84=",
  },
  // {
  //   "from":"USD",
  //   "to":"usd",
  //   "Country":"American Samoa",
  //   "islike": false,
  //   "flag":"https://cdn.pixabay.com/photo/2013/07/13/14/14/american-samoa-162223__480.png",
  // },
  // {
  //   "from": "EUR",
  //   "to": "eur",
  //   "Country": "Belgium",
  //   "islike": false,
  //   "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/14/belgium-162240__480.png",
  // },
  {
    "from": "BZD",
    "to": "bzd",
    "Country": "Belize",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/23/26/belize-26997__480.png",
  },
  {
    "from": "BTN",
    "to": "btn",
    "Country": "Bhutan",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/22/59/bhutan-26799__480.png",
  },
  {
    "from": "BRL",
    "to": "brl",
    "Country": "Brazil",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2014/04/02/11/12/brazil-305531__480.png",
  },
  {
    "from": "BGN",
    "to": "bgn",
    "Country": "BULGARIA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/14/bulgaria-162254__480.png",
  },
  {
    "from": "BIF",
    "to": "bif",
    "Country": "BURUNDI",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/14/burundi-162256__480.png",
  },
  {
    "from": "KHR",
    "to": "khr",
    "Country": "CAMBODIA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/14/cambodia-162257__480.png",
  },
  {
    "from": "XAF",
    "to": "xaf",
    "Country": "CHAD",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/14/chad-162263__480.png",
  },
  {
    "from": "CLP",
    "to": "clp",
    "Country": "CHILE",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/14/chile-162264__480.png",
  },
  {
    "from": "COP",
    "to": "cop",
    "Country": "COLOMBIA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/15/21/27/colombia-35364__480.png",
  },
  {
    "from": "DKK",
    "to": "dkk",
    "Country": "DENMARK",
    "islike": false,
    "flag": "https://media.istockphoto.com/id/459342983/photo/danish-flag.jpg?b=1&s=170667a&w=0&k=20&c=GNXnM5FfnJ48XzuJ6Oobfzu8RZM22jUgV3Zblsk4g-M=",
  },{
    "from":"EGP",
    "to":"egp",
    "Country":"EGYPT",
    "islike": false,
    "flag":"https://cdn.pixabay.com/photo/2012/04/10/23/13/egypt-26909__480.png",
  },
  // {
  //   "from": "EUR",
  //   "to": "eur",
  //   "Country": "FINLAND",
  //   "islike": false,
  //   "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/finland-162294__480.png",
  // },
  {
    "from": "EUR",
    "to": "eur",
    "Country": "FRANCE",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/12/17/17/france-151928__480.png",
  },
  {
    "from": "GHS",
    "to": "ghs",
    "Country": "GHANA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/ghana-162302__480.png",
  },
  // {
  //   "from":"EUR",
  //   "to":"eur",
  //   "Country":"GREECE",
  //   "islike": false,
  //   "flag":"https://cdn.pixabay.com/photo/2012/04/10/23/09/greece-26871__480.png",
  // },

  {
    "from": "GNF",
    "to": "gnf",
    "Country": "GUINEA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/guinea-162311__480.png",
  },
  {
    "from": "HUF",
    "to": "huf",
    "Country": "HUNGARY",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/hungary-162317__480.png",
  },
  {
    "from": "ISK",
    "to": "isk",
    "Country": "ICELAND",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/iceland-162318__480.png",
  },

  {
    "from": "IDR",
    "to": "idr",
    "Country": "INDONESIA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/23/01/indonesia-26817__480.png",
  },
  {
    "from": "IRR",
    "to": "irr",
    "Country": "IRAN",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/iran-162321__480.png",
  },
  {
    "from": "IQD",
    "to": "iqd",
    "Country": "IRAQ",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/iraq-162322__480.png",
  },
  // {
  //   "from": "EUR",
  //   "to": "eur",
  //   "Country": "IRELAND",
  //   "islike": false,
  //   "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/ireland-162323__480.png",
  // },
  {
    "from": "ILS",
    "to": "ils",
    "Country": "ISRAEL",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/israel-162325__480.png",
  },
  {
    "from": "JMD",
    "to": "jmd",
    "Country": "JAMAICA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/jamaica-162327__480.png",
  },
  {
    "from": "GBP",
    "to": "gbp",
    "Country": "JERSEY",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/jersey-162329__480.png",
  },
  {
    "from": "JOD",
    "to": "jod",
    "Country": "JORDAN",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/jordan-162330__480.png",
  },
  {
    "from": "KZT",
    "to": "kzt",
    "Country": "KAZAKHSTAN",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/kazakhstan-162331__480.png",
  },
  {
    "from": "KES",
    "to": "kes",
    "Country": "KENYA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/15/kenya-162332__480.png",
  },
  {
    "from":"KRW",
    "to":"krw",
    "Country":"KOREA",
    "islike": false,
    "flag":"https://cdn.pixabay.com/photo/2013/07/13/14/17/south-korea-162427__480.png",
  },
  {
    "from":"KWD",
    "to":"kwd",
    "Country":"KUWAIT",
    "islike": false,
    "flag":"https://cdn.pixabay.com/photo/2013/07/13/14/15/kuwait-162335__480.png",
  },

  {
    "from": "LRD",
    "to": "lrd",
    "Country": "LIBERIA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/16/liberia-162341__480.png",
  },
  {
    "from": "MYR",
    "to": "myr",
    "Country": "MALAYSIA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/23/01/malaysia-26811__480.png",
  },
  {
    "from": "MVR",
    "to": "mvr",
    "Country": "MALDIVES",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/16/maldives-162352__480.png",
  },
  {
    "from": "XOF",
    "to": "xof",
    "Country": "MALI",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/16/mali-162353__480.png",
  },
  {
    "from": "MUR",
    "to": "mur",
    "Country": "MAURITIUS",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/16/mauritius-162358__480.png",
  },
  {
    "from": "MXN",
    "to": "mxn",
    "Country": "MEXICO",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/23/24/mexico-26989__480.png",
  },
  {
    "from": "MNT",
    "to": "mnt",
    "Country": "MONGOLIA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/23/02/mongolia-26821__480.png",
  },
  {
    "from": "MMK",
    "to": "mmk",
    "Country": "MYANMAR",
    "islike": false,
    "flag": "https://media.istockphoto.com/id/537288309/vector/flag-of-burma.jpg?s=612x612&w=0&k=20&c=aEunZRlzZZsz5EAEuAmQf7Mo99jLrBTtnBXicX_TnKk=",
  },
  {
    "from": "NAD",
    "to": "nad",
    "Country": "NAMIBIA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/23/16/namibia-26926__480.png",
  },
  {
    "from": "NPR",
    "to": "npr",
    "Country": "NEPAL",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/09/56/nepal-156329_1280.png",
  },
  {
    "from": "NZD",
    "to": "nzd",
    "Country": "NEW ZEALAND",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2013/07/13/14/16/new-zealand-162373__480.png",
  },
  {
    "from": "PKR",
    "to": "pkr",
    "Country": "PAKISTAN",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/22/59/pakistan-26804__480.png",
  },
  {
    "from": "PAB",
    "to": "pab",
    "Country": "PANAMA",
    "islike": false,
    "flag": "https://cdn.pixabay.com/photo/2012/04/10/23/26/panama-26998__480.png",
  },
];
