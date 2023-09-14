import 'package:coordonate_app/features/chat/presentation/widgets/all_messages_widget.dart';
import 'package:coordonate_app/features/chat/presentation/widgets/bottom_nav.dart';
import 'package:coordonate_app/features/chat/presentation/widgets/search_widget.dart';
import 'package:coordonate_app/features/chat/presentation/widgets/story_section_widget.dart';
import 'package:flutter/material.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomNav(),
      body: Container(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Chats",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            Search(),
            const SizedBox(
              height: 33,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Frequently chatted",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Story();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemCount: 8),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 7),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "All Messages",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return AllMessage();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 6,
                    );
                  },
                  itemCount: 8),
            ),
          ],
        ),
      ),
    );
  }
}
