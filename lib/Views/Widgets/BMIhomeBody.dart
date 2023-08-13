import 'package:bmi/Views/resultView.dart';
import 'package:flutter/material.dart';

class BmihomeViewBody extends StatefulWidget {
  const BmihomeViewBody({super.key});

  @override
  State<BmihomeViewBody> createState() => _BmihomeViewBodyState();
}

class _BmihomeViewBodyState extends State<BmihomeViewBody> {
  @override
  Color color = const Color(0xffE7144C);
  bool ismale = true;
  double height = 120;
  int WEIGHT = 40;
  int age = 20;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ismale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:
                              ismale ? color : Color.fromARGB(255, 29, 31, 41),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_sharp,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Opacity(
                                opacity: 0.5,
                                child: Text(
                                  'MALE',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ))
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ismale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:
                              ismale ? Color.fromARGB(255, 29, 31, 41) : color,
                          borderRadius: BorderRadius.circular(16)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Opacity(
                                opacity: 0.5,
                                child: Text(
                                  'FEMALE',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ))
                          ]),
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 29, 31, 41),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Opacity(
                      opacity: 0.5,
                      child: Text(
                        'HEIGHT',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(fontSize: 60, color: Colors.white),
                        ),
                        const Text(
                          'Cm',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                        activeColor: const Color(0xffE7144C),
                        inactiveColor: const Color.fromARGB(255, 20, 13, 15),
                        value: height,
                        min: 80,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 29, 31, 41),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Opacity(
                              opacity: 0.4,
                              child: Text(
                                'WEIGHT',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Text(
                              '$WEIGHT',
                              style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: '4',
                                  backgroundColor:
                                      const Color.fromARGB(255, 47, 49, 58),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      WEIGHT++;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    size: 35,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  heroTag: '3',
                                  backgroundColor:
                                      const Color.fromARGB(255, 47, 49, 58),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      WEIGHT--;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                    size: 35,
                                  ),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 29, 31, 41),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Opacity(
                              opacity: 0.4,
                              child: Text(
                                'AGE',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: '2',
                                  backgroundColor:
                                      const Color.fromARGB(255, 47, 49, 58),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    size: 35,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  heroTag: '1',
                                  backgroundColor:
                                      const Color.fromARGB(255, 47, 49, 58),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                    size: 35,
                                  ),
                                )
                              ],
                            )
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xffE7144C)),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return resultView(WEIGHT: WEIGHT, age: age, height: height, ismale: ismale);
                }));
              },
              child: const Text(
                'CALCULAT',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
