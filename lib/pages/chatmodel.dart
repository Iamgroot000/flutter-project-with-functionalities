class ChatModels{
  final String name;
  final String message;
  final String time;
  //final String avatarUrl;

  ChatModels({required this.name,required this.message,required this.time,});

  List<ChatModels> dummyData = [
    ChatModels(
      name: "Groot",
      message: "I am Groot",
      time: "15:30",
    ),
    ChatModels(
      name: "Thor",
      message: "I am Groot",
      time: "15:30",
    ),
    ChatModels(
      name: "Rabbit",
      message: "I am Groot",
      time: "15:30",
    ),
    ChatModels(
      name: "Iron-man",
      message: "I am Groot",
      time: "15:30",
    ),
    ChatModels(
      name: "Captian",
      message: "I am Groot",
      time: "15:30",
    ),


  ];
}