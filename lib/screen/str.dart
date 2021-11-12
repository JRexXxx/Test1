import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class Str extends StatefulWidget {
  const Str({ Key? key }) : super(key: key);

  

  @override
  _StrState createState() => _StrState();
}

class _StrState extends State<Str> {
   var titleList = [
    "Abaddon",
    "Axe",
    "Bristleback",
    "Doom",
    "Earthshaker",
    "Pudge",
    "Sandking",
    "Slardar",
    "Sven",
    "Tidehunter",
  ];

  var descList = [
    "Abaddon สามารถรอดจากการโจมตีจากศัตรูได้เกือบทั้งหมด เขาสามารถที่จะเปลี่ยนการโจมตีจากศัตรูมาเป็นการรักษาตัวเองได้ และยังช่วยใส่เกราะป้องกันให้กับเพื่อนร่วมทีมหรือปล่อยพลังสองคมของเขาใส่เพื่อนหรือศัตรูได้อีกด้วย เขาพร้อมที่มุ่งเข้าสู่สนามรบที่มั่ววุ่นวายอยู่เสมอ",
    "Axe สับหัวศัตรูได้ทีละคนเรื่อย ๆ เขาสามารถเปิดฉากให้กับทีม หรือล็อคตัวศัตรูในสนามรบแล้วสวนกลับศัตรูด้วยการหมุนตัวฟันด้วยขวานได้ รวมถึงกระโดดสับหัวศัตรูที่อ่อนแอด้วยขวานคู่ใจของเขา เขาบุกเข้าไปยังสนามรบได้ตลอดเวลา",
    "ถ้าพูดถึงเรื่องการต่อสู้แล้ว ต้องบอกว่า Bristleback นั้นสู้อย่างหลังขดหลังแข็งจริง ๆ ลดความเสียหายทั้งหมดที่ได้รับจากด้านหลังและด้านข้าง เขาลุยเข้าสู่สนามรบอย่างไม่สนใจอะไรทั้งนั้น พ่นขนไปยังศัตรูเพื่อสร้างความเสียหายและพ่นน้ำมูกทำให้ศัตรูช้าลง",
    "Doom ตัดโอกาสศัตรูของเขาไม่ด้วยวิธีใดก็วิธีหนึ่ง กลืนกินครีปเพื่อรับความสามารถต่าง ๆ ที่พวกมันมี เขาสามารถแผดเผาศัตรูและปล่อยคาถาใบ้อย่างยาวนานไม่สามารถใช้สกิลและไอเท็มได้ด้วยอัลติเมทของเขา",
    "ไม่ว่าจะเป็นการปิดทางหนีของศัตรู หรือแบ่งแยกกองกำลังของพวกมัน หรือแม้แต่แยกแผ่นดินเพื่อรวบรวมพวกมันให้อยู่ในที่เดียวกัน Earthshaker นั้นจะอยู่ในสภาพที่ดีที่สุดหากตัวเขาสามารถบุกโจมตีได้โดยไร้การแจ้งเตือน ไม่ว่าจะเป็นสิ่งใดหากรอดจากแรงกระแทกจากแผ่นดินไหวไปได้ ก็ยังมีการโจมตีจากโทเทมอันทรงพลังของเขารออยู่",
    "แต่ละครั้งที่ Pudge ค่อย ๆ เล็งและขว้างตะขอเกี่ยวออกไปนั้นสามารถสร้างความหวาดกลัวให้แก่ศัตรูได้ทุกครั้ง ตะขออันเป็นเอกลักษณ์นี้สามารถดึงศัตรูให้เข้ามาใกล้เพื่อนำมาชำแหละด้วยปังตอของเขา เขาจะได้รับพลังชีวิตและพลังโจมตีเพิ่มขึ้นทุกครั้งที่สังหารศัตรู และจะกลายเป็นนักฆ่าที่ไม่มีใครหยุดยั้งได้ในที่สุด",
    "น้อยคนนักที่จะรอดชีวิตจากการซุ่มโตมตีของ Sand King ผู้ทำลายทุกอย่างรอบ ๆ ตัวด้วยคลื่นสั่นสะเทือนมรณะจากอัลติเมทของเขา เขาหลบการตอบโต้ด้วยการซ่อนตัวเองในพายุทรายโสโครก และสตันศัตรูด้วยการโจมตีจากเบื้องล่าง",
    "พร้อมที่จะหาและทำลายศัตรูของเขา Slardar เลื้อยเข้าสู่สนามรบได้อย่างรวดเร็ว หลังจากเปิดเผยตำแหน่งของศัตรูและสลายการป้องกันของพวกเขา เขาเข้าไปในระยะใกล้เพื่อล็อคพวกเขาไว้กับที่ด้วยการกระทืบพื้นและการทุบตีอย่างแรงด้วยสามง่ามของเขา",
    "Sven กระหายที่จะพุ่งเข้าต่อสู้อยู่เสมอ เขาสตันศัตรูได้เป็นกลุ่มเมื่อเขาก้าวเข้าสู่การต่อสู้ และเมื่อเขาปลดปล่อยอัลติเมทเพิ่มพลังโจมตีของเขา การแกว่งดาบยักษ์ของเขาเพียงไม่กี่ทีก็มากเกินพอที่จะสังหารศัตรูของเขา",
    ".....",
  ];

  var imgList = [
    "asset/Str/Abaddon_img.png",
    "asset/Str/Axe_img.png",
    "asset/Str/Bristleback_img.png",
    "asset/Str/Doom_img.png",
    "asset/Str/Earthshaker_img.png",
    "asset/Str/Pudge_img.png",
    "asset/Str/Sandking_img.png",
    "asset/Str/Slardar_img.png",
    "asset/Str/Sven_img.png",
    "asset/Str/Tidehunter_img.png",
  ];
  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            child: Card(
                child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(imgList[index]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        titleList[index],
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        child: Text(descList[index],
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500])),
                      ),
                    ],
                  ),
                )
              ],
            )),
          );
        },
      ),
    );
  }

  showDialogFunc(context, img, title, desc) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        img,
                        width: 200,
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      desc,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[500],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
  
 
}