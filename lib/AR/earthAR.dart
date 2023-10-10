import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector64;

class EarthAr extends StatefulWidget {
  const EarthAr({super.key});

  @override
  State <EarthAr> createState() => _ArEarthScreenState();
}

class _ArEarthScreenState extends State<EarthAr> {
  ArCoreController? augmentedRealityCoreController;

  augmentedRealityViewCreated(ArCoreController arCoreController){
    augmentedRealityCoreController = arCoreController;

    displayEarthSphere(augmentedRealityCoreController!);

  }

  displayEarthSphere(ArCoreController arCoreController) async {
    final ByteData earthTextureBytes = await rootBundle.load("arimages/earth.jpg");

    final material = ArCoreMaterial(
      color: Colors.blue,
      textureBytes: earthTextureBytes.buffer.asUint8List(),
    );

    final sphere = ArCoreSphere(
        materials: [
      material
    ]
    );

    final node = ArCoreNode(
      shape: sphere,
      position: vector64.Vector3(0,0,-1.5)
    );

    augmentedRealityCoreController?.addArCoreNode(node);

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AR Earth"
        ),
        centerTitle: true,
      ),
      body: ArCoreView(
        onArCoreViewCreated: augmentedRealityViewCreated,
      ),
    );
  }
}