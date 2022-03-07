import "package:flutter/material.dart";
import "package:get/get.dart";

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final maCony = Get.put(Macon());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Latihan GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => Text(
                "${maCony.data.value}",
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    maCony.decrement();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    maCony.increment();
                  },
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Macon extends GetxController {
  var data = 0.obs;
  decrement() {
    data++;
  }

  increment() {
    data++;
  }
}
