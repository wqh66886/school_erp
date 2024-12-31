import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:school_erp_app/widgets/timer_progress.dart';

class PlayQuizPage extends StatefulWidget {
  const PlayQuizPage({super.key});

  @override
  State<PlayQuizPage> createState() => _PlayQuizPageState();
}

class _PlayQuizPageState extends State<PlayQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Play Quiz",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              child: const Text(
                "Skip",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(40, 85, 174, 1),
      ),
      backgroundColor: const Color.fromRGBO(40, 85, 174, 1),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TimerProgressBar(),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Question 1",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "/ 10",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 32,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromRGBO(255, 255, 255, 0.12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/ic_quesion.png"),
                          const Text(
                            "256",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("")),
                          ),
                          Container(
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("")),
                          ),
                          Container(
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("")),
                          ),
                          Container(
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("")),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 10,
                  itemWidth: double.infinity,
                  itemHeight: double.infinity,
                  layout: SwiperLayout.TINDER,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
