import 'package:test/model/user_model.dart';

class Message {
  final User sender;
  final String time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: ironMan,
    time: '5:30 PM',
    text: 'โอเครงั้นหลัง 3 ทุ่มเจอกัน!!!',
    unread: true,
  ),
  Message(
    sender: captainAmerica,
    time: '4:30 PM',
    text: 'Thx bro.see you next tour.',
    unread: true,
  ),
  Message(
    sender: blackWindow,
    time: '3:30 PM',
    text: 'Last game was sucks man. I wanna sleep.You wanna sleep last game?',
    unread: false,
  ),
  Message(
    sender: spiderMan,
    time: '2:30 PM',
    text: 'Anjing Putang inamo shit indo!.',
    unread: true,
  ),
  Message(
    sender: hulk,
    time: '1:30 PM',
    text: 'Tiny is Good!!',
    unread: false,
  ),
  Message(
    sender: thor,
    time: '12:30 PM',
    text: 'เกมสุดท้ายแม่งโครตสนุกเลยว่ะ!!!',
    unread: false,
  ),
  Message(
    sender: scarletWitch,
    time: '11:30 AM',
    text: 'ไอ่เ*ย Euro แม่งกากเล่นแครี่แจกทำทีมแพ้',
    unread: false,
  ),
  Message(
    sender: captainMarvel,
    time: '12:45 AM',
    text: 'ผมหาทีมครับ สนใจเข้าทีมผมไหม?',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: ironMan,
    time: '5:30 PM',
    text: 'โอเครงั้นหลัง 3 ทุ่มเจอกัน!!!',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'ผมว่างหลัง 3 ทุ่มครับพอดีผมทำงานกะดึก',
    unread: true,
  ),
  Message(
    sender: ironMan,
    time: '3:45 PM',
    text: 'คุณสะดวกตอนไหนครับ ผมได้บอกเพื่อนผมถูกว่านัดซ้อมทีมกี่โมง',
    unread: true,
  ),
  Message(
    sender: ironMan,
    time: '3:15 PM',
    text: 'แข่งทัวร์ESLรอบคัดเลือก วันที่แข่ง 12 ธันวาคม ประมาณ 18.00 น.ครับพวกว่างทั้งวันครับ',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'พอดีช่วงนี้ผมไม่ค่อยว่างได้จัดการเวลาได้ถูกครับ',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'ขอรายละเอียดเกี่ยวกับทัวร์หน่อยได้ไหมครับว่าซ้อมหรือแข่งช่วงไหนครับ',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'ได้ครับ',
    unread: true,
  ),
  Message(
    sender: ironMan,
    time: '2:00 PM',
    text: 'เห็นหาทีมอยู่ในบอร์ดสนใจเข้าทีมผมไหม?',
    unread: true,
  ),
];

List<Message> messages1 = [
 
  
];