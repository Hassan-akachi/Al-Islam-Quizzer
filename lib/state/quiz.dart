class Quiz {
  final String question;
  final String correctAns;
  final List<String> options;

  Quiz(this.question, this.correctAns, this.options);
}
  List<Quiz> prophet =[Quiz("who was the first prophet","Adam",["ibrahim","Adam","Muhamad","Noah"]),
  Quiz("What is the name of the prophet that got swallowed by a fish", "Yunus", ["yusuf","Adam","Yunus","Idris"]),
  Quiz("Who is the grandfather of prophet Isaih", "Zakariya", ["Zakariya","Adam","Musa","Luth"]),
  Quiz("who is the father of prophet Muhammad(S.A.W)", "Abdullah",["Abdullateef","Abdullah","Abu Talib","Ibrahim"] ),
  Quiz("What is the name of prophet Ibrahim second son", "Isaac", ["Ismail","yusuf","Dawud","Isaac"])];


  List<Quiz> Quran =[Quiz("How many chapters are in the Holy Quran","114", ["144","114","562","164"]),
                      Quiz(" Last chapter in Quran is_", "An-Nās", ["Al-Faatiha","Al-Falaq","Al-Kawthar","An-Nās"]),
                      Quiz("Quran is divided into how many parts?", "30", ["30","20","34","44"]),
                      Quiz("Name of each part of Quran is","juz", ["hifz","surat","juz","ayah"]),
                      Quiz("the 16th juz start in which surat","Al-Kahf", ["Al-Hijr","Al-Israa","Al-Kahf","Yaseen"])];

  List<Quiz> Solat=[Quiz("what is the total sum of compulsory daily ra'akah performed in a day", "17", ["17","23","14","18"]),
                    Quiz("How many times do we say Allahu-Akbar in the adhan", "6", ["4","6","5","8"]),
                    Quiz("what is prostration of forgetfulness called","sujuh sahwi", ["Qabli","sujuh sahwi","Ba'di","Ruku Sahwi"]),
                    Quiz("How many times does a Muslim pray in a day?","5", ["7","5","6","4"]),
                    Quiz("Salat or prayer is one of the pillars of Islam","true",["true","i dont know","false","not sure"])];

  List<Quiz> Ramadan=[Quiz("Ramadan is the ___ number in the Hijrah calendar", "8", ["6","9","8","12"]),
                      Quiz("What is something you cannot do while fasting", "Eating", ["Praying","Reading","Eating","Sleeping"]),
                      Quiz("All of these are practices of Ramadan except?", "Eid-l Kabir", ["Taraweeh","Sawm","Tahajjud","Eid-l Kabir"]),
                      Quiz("Ramadan is observed for how many day?", "29 - 30 Days", ["35 - 40 Days","29 - 30 Days","31 Days","28 Days"]),
                      Quiz("What is the name of fast-breaking food?", "Iftar", ["Sahur","Zakat","Iftar","Sadaqah"])];

  List<Quiz> Hajj=[Quiz("hajj is performed in which country", "Saudi-Arabia", ["Sudan","Nigeria","Saudi-Arabia","Egypt"]),
                    Quiz("Which pillar of Islam is the Hajj?", "5th", ["3rd","2nd","5th","4th"]),
                    Quiz("During the Hajj, all pilgrims must wear the traditional garbs of", "Ihram", ["Ihram","Mecca","Jeans","Jalabia"]),
                    Quiz("Pilgrims throw rocks at a pillar representing ____ and all the evils in life", "Satan", ["Jesus","The pillars of Islam","Thieves","Satan"]),
                    Quiz("Pilgrims walk around the Ka'ba _____ times", "7", ["7","9","11","5"])];

  List<List<Quiz>> section=[prophet,Quran,Solat,Ramadan,Hajj];