// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// class BarcodeScannerListview extends StatefulWidget {
//   const BarcodeScannerListview({super.key});

//   @override
//   State<BarcodeScannerListview> createState() => _BarcodeScannerListviewState();
// }

// class _BarcodeScannerListviewState extends State<BarcodeScannerListview> {
//   final MobileScannerController controller =
//       MobileScannerController(torchEnabled: true);

//   Widget _buildBarcodeListView() {
//     if (barcodes == null || barcode.isEmpty) {
//       return const Center(
//         child: Text(
//           'scan something!',
//           style: TextStyle(color: Colors.white,fontSize: 20),
//         ),
//       );
//     }
//   }
// return ListView.builder(
//   itemCount: barcodes.length,
//   itemBuilder: (context,  index) {
//     return Padding(padding: EdgeInsets.all(8.0),
//     child: Text(
//       barcodes[index].rawValue ?? 'now raw value'
//       overflow: TextOverflow.fade,
//       style: TextStyle(color: Colors.white),
//     ),);
//   },
// ),
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("with listview"),
//       ),
//       backgroundColor: Colors.black ,
// body: Stack(children: [
//   MobileScanner(
//     controller: controller,
//     errorBuilder: (context,error,child){
//       return MobileScannerErrorDetails()
//     },
//   )
// ],),
//     );
//   }
// }
