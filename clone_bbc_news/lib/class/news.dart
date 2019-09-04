import 'package:flutter/material.dart';
class news{
  String title;
  String image;
  Text detials;
  IconData icon;
  bool fullScreen;
  Text time;
  Text location;
  String query;

  news({this.query,this.title,this.detials,this.fullScreen,this.icon,this.image,this.location,this.time});
}

List<news> listOfNews= <news>[
  news(title: "ছোট উদ্যোগে বড় পরিবর্তন",
    query: "ছোট উদ্যোগে বড় পরিবর্তন soto",
    detials: Text("ডেঙ্গু জ্বরে আক্রান্ত হয়ে গত ২৫ আগস্ট তৃতীয় শ্রেণির ছাত্র আশিকুর রহমান হাসপাতালে মারা যায়। এর দুই দিনের মাথায় আড়াই বছরের জেরিয়ানারও একই কারণে মৃত্যু হয়। এই দুই শিশুর বাসা আজিমপুরে পাশাপাশি।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("US /Canada",style: TextStyle(color: Colors.redAccent),),
    time: Text("2m",style: TextStyle(color: Colors.grey),),
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/c866c0f080400d86ef5a22c931a7f2c2-5d6e00beb77ef.jpg',
  ),

  news(title: "পুলিশের ওপর পাঁচ হামলার চারটিই দূরনিয়ন্ত্রিত বোমায়",
    detials: Text("পুলিশের ওপর সাম্প্রতিক পাঁচটি বোমা হামলার চারটিই ছিল দূরনিয়ন্ত্রিত বোমা। সর্বশেষ গত শনিবার রাতের হামলায়ও একই ধরনের বোমা ব্যবহার করা হয়েছে বলে ধারণা করা হচ্ছে। প্রতিটি ঘটনা একই কায়দায় এবং কাছাকাছি সময়ে ঘটেছে। ব্যবহৃত বিস্ফোরকও একই ধরনের। তদন্তসংশ্লিষ্ট কর্মকর্তারা বলছেন, হামলার লক্ষ্যবস্তু, সময় ও স্থান নির্ধারণ এবং সর্বোপরি হামলার ধরন দেখে তাঁরা মনে করছেন, জঙ্গিবাদে উদ্বুদ্ধ কোনো দল ঘটনাগুলো ঘটাচ্ছে। বড় ধরনের কোনো ক্ষয়ক্ষতি না হলেও এসব হামলাকে বড় কোনো ঘটনার পূর্বাভাস বলে মনে করছেন সরকারের একজন গুরুত্বপূর্ণ মন্ত্রী।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("Bangladesh",style: TextStyle(color: Colors.redAccent),),
    time: Text("4m",style: TextStyle(color: Colors.grey),),
    query: "পুলিশের ওপর পাঁচ হামলার চারটিই দূরনিয়ন্ত্রিত বোমায় police",
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/a6873fb8023e521b63673048a2143dad-5d6df48ae6902.jpg',
  ),


  news(title: "দলবদল: রিয়াল ছেড়ে পিএসজিতে নাভাস",
    query: "দলবদল: রিয়াল ছেড়ে পিএসজিতে নাভাস reyal",
    detials: Text("নেইমারের বার্সেলোনায় ফেরার সম্ভাবনা শেষ। স্প্যানিশ-ইতালিয়ান ও ফরাসি লিগে দলবদলের সময় শেষ হয়েছে কাল রাতেই। তার আগে ইন্টার মিলান স্ট্রাইকার মাউরো ইকার্দিকে ধারে দলে টেনেছে পিএসজি। দলবদলের শেষ দিনে রিয়াল মাদ্রিদ গোলরক্ষক কেইলর নাভাসকেও প্যারিসে উড়িয়ে এনেছে ফরাসি ক্লাবটি। আর পিএসজি থেকে ধারে ফরাসি গোলরক্ষক আলফোনসে আরেয়োলাকে দলে টেনেছে রিয়াল। পিএসজির সঙ্গে গোলরক্ষক বিনিময়ের এ চুক্তিতে আরেয়োলাকে পরে কেনার সুযোগও পাবে স্প্যানিশ ক্লাবটি। এদিকে পিএসজি ছেড়ে পর্তুগিজ ক্লাব স্পোর্টিং লিসবনে যোগ দিয়েছেন স্প্যানিশ ফরোয়ার্ড হেসে রদ্রিগেজ।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("US /Canada",style: TextStyle(color: Colors.redAccent),),
    time: Text("2m",style: TextStyle(color: Colors.grey),),
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/11ac5be137c3bceb112fec5cf361e42d-5d6e19eb2435a.jpg',
  ),



  news(title: "মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল",
    query: "মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল sayed",
    detials: Text("রাত আটটায় লঞ্চ ছাড়ে। আবু সাঈদ রাত সাড়ে ১২টায় ঘুম থেকে জেগে ওঠে। বলে, প্রস্রাব করতে যাবে। সাইফুল আর আমি তাকে নিয়ে আসি নিচতলায়। এরপর ওকে লঞ্চের পেছনে নিয়ে যাই। এমতাবস্থায় আমি ওকে ধাক্কা দিয়ে ফেলে দিই। আর দেখি নাই।’খুনের এই স্বীকারোক্তিমূলক জবানবন্দি দেন আফজাল হোসেন। একই কথা আদালতে বলেন সাইফুল ইসলাম।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("Dhaka",style: TextStyle(color: Colors.redAccent),),
    time: Text("2m",style: TextStyle(color: Colors.grey),),
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/496bafe124ff046a122411a5df7b1538-5d6daf6043b2d.jpg',
  ),



  news(title:"রামুতে দোকানে আগুন, দুজনের মৃত্যু",
    query: "রামুতে দোকানে আগুন, দুজনের মৃত্ dead ramu",
    detials: Text("কক্সবাজারের রামু উপজেলার গর্জনিয়া বাজারে দোকানে আগুন লেগে দুই ব্যক্তির মৃত্যু হয়েছে।গতকাল সোমবার দিবাগত রাত দুইটার দিকে এই অগ্নিকাণ্ডের ঘটনা ঘটে।নিহত ব্যক্তিরা হলেন বাজারের মুদি দোকানদার ফিরোজ আহমদ (৫৫) ও তাঁর দোকানের কর্মচারী আনোয়ার হোসেন (১৫)।ফিরোজের বাড়ি উপজেলার কচ্ছপিয়া ইউনিয়নের ছোট জামছড়ি গ্রামে। বাবার নাম লাল মোহাম্মদ। আনোয়ারের বাড়ি একই ইউনিয়নের শুকমনিয়া গ্রামে। বাবার নাম নূর কাদের।অগ্নিকাণ্ডে গর্জনিয়া বাজারের পাঁচটি দোকান পুড়ে যায়।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("CTG",style: TextStyle(color: Colors.redAccent),),
    time: Text("2m",style: TextStyle(color: Colors.grey),),
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/320x179x1/uploads/media/2017/07/08/211e4fed6541fd2350f70c479b13ad2f-59610924d6ec7.jpg',
  ),



  news(title: "মমতার গ্রেপ্তার দাবি করায় মুকুলের বিরুদ্ধে এফআইআর",
    query: "মমতার গ্রেপ্তার দাবি করায় মুকুলের বিরুদ্ধে এফআইআর india",
    detials: Text("ডপশ্চিমবঙ্গের মুখ্যমন্ত্রী মমতা বন্দ্যোপাধ্যায়ের গ্রেপ্তার দাবি করায় বিজেপি নেতা মুকুল রায়ের বিরুদ্ধে থানায় এফআইআর করেছেন রাজ্যের এক মন্ত্রী। গতকাল সোমবার এই এফআইআর করা হয়।ঘটনার সূত্রপাত গত রোববার। উত্তর ২৪ পরগনা জেলার বারাকপুরের জগদ্দল এলাকায় তৃণমূল কংগ্রেস তাদের পার্টি অফিস পুনরুদ্ধার করতে যায়। এ সময় বিজেপির সঙ্গে সংঘর্ষে জড়িয়ে পড়ে তৃণমূল। এলাকার বিজেপি সাংসদ অর্জুন সিং এলে তাঁর গাড়ি লক্ষ্য করে ইটপাটকেল ছোড়েন তৃণমূলের সমর্থকেরা। ইটের আঘাতে জখম হন সাংসদ অর্জুন। তাঁকে হাসপাতালে ভর্তি করা হয়। এখন অর্জুন সুস্থ আছেন।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("US /Canada",style: TextStyle(color: Colors.redAccent),),
    time: Text("2m",style: TextStyle(color: Colors.grey),),
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/640x396x1/uploads/media/2019/09/03/3457e2ed1ae9604272169a557cf98575-5d6e16fcef325.jpg',
  ),


  news(title: "বই পড়ি, পত্রিকা পড়ি, সুন্দর হই",
    query: "বই পড়ি, পত্রিকা পড়ি, সুন্দর হই book boi",
    detials: Text("আপনার সন্তানের হাতে যন্ত্র নয়, বই তুলে দিন। বাড়িতে দৈনিক পত্রিকা রাখুন। আপনার কিশোর সন্তানের হাতে বই তুলে দিন, আর তুলে দিন কিশোরদের উপযোগী পত্রিকা (একটার নাম আমি বলতে পারি—কিশোর আলো)। এখন সামাজিক যোগাযোগের মাধ্যমগুলো এত নেতিবাচক বিষয়ে আকীর্ণ যে শ্বাস রোধ হয়ে আসে। চারপাশের দরজা-জানালাগুলো খুলে দিন, আমরা একটু বিশুদ্ধ বাতাসে শ্বাস নিতে চাই। দৈনিক খবরের কাগজ আর বই হলো সেই জানালা।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("US /Canada",style: TextStyle(color: Colors.redAccent),),
    time: Text("2m",style: TextStyle(color: Colors.grey),),
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/640x357x1/uploads/media/2019/09/03/de0ba0ab76e5eebca80c5a5f809bdbcb-5d6df7011bde6.jpg',
  ),


  news(title: "ভারতীয় চিত্রকরের তুলিতে মোশাররফ করিম",
    query: "ভারতীয় চিত্রকরের তুলিতে মোশাররফ করিম india",
    detials: Text("কণ্ঠশিল্পী লতা মঙ্গেশকরের ছবির নিচে ঝুলছে বাংলাদেশি অভিনেতা মোশাররফ করিমের মুখচ্ছবি। ২০ ইঞ্চি বাই ১৬ ইঞ্চি আকারের সেই চিত্রকর্মের নাম ‘দ্য ম্যাজিশিয়ান’। ক্যানভাসের ওপরে অ্যাক্রিলিক, আঠা, ধুলাসহ মিশ্র মাধ্যমে ছবিটি এঁকেছেন ভারতের পশ্চিমবঙ্গের চিত্রকর সুব্রত ঘোষ।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("US /Canada",style: TextStyle(color: Colors.redAccent),),
    time: Text("2m",style: TextStyle(color: Colors.grey),),
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/640x377x1/uploads/media/2019/09/03/ee0ef129134046c0b7058481529d3602-5d6e0f26e6b63.jpg',
  ),


  news(title: "কীভাবে কাজ করেন বিল গেটস?",
    query: "কীভাবে কাজ করেন বিল গেটস? kevaby",
    detials: Text("ডকিসে সবচেয়ে বেশি ভয় পান বিল গেটস? নিজেই জানিয়ে দিলেন, ‘আমি চাই না আমার মস্তিষ্ক কাজ করা বন্ধ করুক।’ পছন্দের খাবার? ‘হ্যাম বার্গার।’ পছন্দের প্রাণী? ‘কুকুর।’ একের পর এক প্রশ্ন করতে থাকেন উপস্থাপক। উত্তরে নিজের পছন্দ-অপছন্দের কথা বলতে থাকেন মাইক্রোসফটের সহপ্রতিষ্ঠাতা। ট্রেলারের শুরুটা এমনই।",style: TextStyle(
      fontFamily: 'bangla',
      fontSize: 12,
    ),),
    fullScreen: true,
    icon: null,
    location: Text("US /Canada",style: TextStyle(color: Colors.redAccent),),
    time: Text("2m",style: TextStyle(color: Colors.grey),),
    image: 'https://paloimages.prothom-alo.com/contents/cache/images/640x479x1/uploads/media/2015/10/28/525ea4b2174020b1976f771af4630ee5-Bill-Gates_3485125b.jpg',
  ),





];