
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text(
          'Country Picker',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Country Picker Example for Swiper :)',
        ),
      ),
    );
  }
}

// class _HomePageState extends State<HomePage> {
//   TextStyle get _defaultTextStyle => const TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.bold,
//       );

//   Widget title({String? title}) {
//     return Text(
//       title ?? "",
//       style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//     );
//   }

//   CountryData? initialDialogDefaultValue;
//   CountryData? initialDialogCustomValue;
//   CountryData? initialBottomDefaultValue;
//   CountryData? initialBottomCustomValue;
//   CountryData? initialCupertinoBottomDefaultValue;
//   CountryData? initialCupertinoBottomCustomValue;

//   @override
//   void didChangeDependencies() {
//     initialDialogDefaultValue =
//         CountryPicker.getCountryData(context: context, code: "IN");
//     initialDialogCustomValue =
//         CountryPicker.getCountryData(context: context, code: "ID");
//     initialBottomDefaultValue =
//         CountryPicker.getCountryData(context: context, code: "IN");
//     initialBottomCustomValue =
//         CountryPicker.getCountryData(context: context, code: "IS");
//     initialCupertinoBottomDefaultValue =
//         CountryPicker.getCountryData(context: context, code: "IN");
//     initialCupertinoBottomCustomValue =
//         CountryPicker.getCountryData(context: context, code: "UY");
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         surfaceTintColor: Colors.transparent,
//         title: const Text(
//           'Country Picker',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//           child: Wrap(
//             spacing: 12,
//             runSpacing: 12,
//             children: <Widget>[
//               Card(
//                 child: ExpansionTile(
//                   expandedCrossAxisAlignment: CrossAxisAlignment.center,
//                   collapsedShape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(8.0))),
//                   initiallyExpanded: true,
//                   title: Text(
//                     'Country picker using dialog',
//                     style: _defaultTextStyle,
//                   ),
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 16, bottom: 5),
//                             child: Column(
//                               children: [
//                                 title(title: "Default"),
//                                 ElevatedButton(
//                                   onPressed: () async {
//                                     CountryPicker.showCountryPickerDialog(
//                                       context: context,
//                                       layoutConfig: const LayoutConfig(
//                                           elementsSequence:
//                                               Sequence.flagCodeAndCountryName),
//                                     ).then(
//                                       (value) {
//                                         if (value != null) {
//                                           initialDialogDefaultValue = value;
//                                           debugPrint(
//                                               'showCountryPickerDialog default ::${initialDialogDefaultValue?.name}');
//                                           setState(() {});
//                                         }
//                                       },
//                                     );
//                                   },
//                                   child: ButtonRowWidget(
//                                     dialCode:
//                                         initialDialogDefaultValue?.dialCode,
//                                     flagUri: initialDialogDefaultValue?.flagUri,
//                                     name: initialDialogDefaultValue?.name,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: SizedBox(
//                             width: double.maxFinite,
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.only(top: 16, bottom: 5),
//                               child: Column(
//                                 children: [
//                                   title(title: "Custom"),
//                                   ElevatedButton(
//                                     onPressed: () {
//                                       CountryPicker.showCountryPickerDialog(
//                                         size: const Size(250, 550),
//                                         borderRadius: const BorderRadius.all(
//                                           Radius.circular(25),
//                                         ),
//                                         context: context,
//                                         favouriteCountries: ["+91", "+355"],
//                                         layoutConfig: const LayoutConfig(
//                                             flagWidth: 24,
//                                             flagHeight: 24,
//                                             elementsSequence:
//                                                 Sequence.codeCountryNameAndFlag,
//                                             flagDecoration: BoxDecoration(
//                                                 shape: BoxShape.circle)),
//                                       ).then(
//                                         (value) {
//                                           if (value != null) {
//                                             initialDialogCustomValue = value;
//                                             debugPrint(
//                                                 'showCountryPickerDialog custom ::${initialDialogCustomValue?.name}');
//                                             setState(() {});
//                                           }
//                                         },
//                                       );
//                                     },
//                                     child: ButtonRowWidget(
//                                       dialCode:
//                                           initialDialogCustomValue?.dialCode,
//                                       flagUri:
//                                           initialDialogCustomValue?.flagUri,
//                                       name: initialDialogCustomValue?.name,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Card(
//                 child: ExpansionTile(
//                   title: Text(
//                     'Country picker using bottom sheet',
//                     style: _defaultTextStyle,
//                   ),
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 16, bottom: 5),
//                             child: Column(
//                               children: [
//                                 title(title: "Default"),
//                                 ElevatedButton(
//                                   onPressed: () => CountryPicker
//                                       .showCountryPickerBottomSheet(
//                                     favouriteCountries: ["India"],
//                                     layoutConfig: const LayoutConfig(
//                                         elementsSequence:
//                                             Sequence.flagCodeAndCountryName),
//                                     context: context,
//                                   ).then((value) {
//                                     if (value != null) {
//                                       initialBottomDefaultValue = value;
//                                       debugPrint(
//                                           'showCountryPickerBottom :: ${initialBottomDefaultValue?.name}');
//                                       setState(() {});
//                                     }
//                                   }),
//                                   child: ButtonRowWidget(
//                                     dialCode:
//                                         initialBottomDefaultValue?.dialCode,
//                                     flagUri: initialBottomDefaultValue?.flagUri,
//                                     name: initialBottomDefaultValue?.name,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: SizedBox(
//                             width: double.maxFinite,
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.only(top: 16, bottom: 10),
//                               child: Column(
//                                 children: [
//                                   title(title: "Custom"),
//                                   ElevatedButton(
//                                     onPressed: () => CountryPicker
//                                         .showCountryPickerBottomSheet(
//                                       countryListConfig: CountryListConfig(),
//                                       showDragHandle: true,
//                                       context: context,
//                                       favouriteCountries: ["+91", "+376"],
//                                       layoutConfig: const LayoutConfig(
//                                         flagWidth: 24,
//                                         flagHeight: 24,
//                                         elementsSequence:
//                                             Sequence.codeCountryNameAndFlag,
//                                         flagDecoration: BoxDecoration(
//                                             shape: BoxShape.circle),
//                                       ),
//                                     ).then((value) {
//                                       if (value != null) {
//                                         initialBottomCustomValue = value;
//                                         debugPrint(
//                                             'showCountryPickerBottom :: ${initialBottomCustomValue?.name}');
//                                         setState(() {});
//                                       }
//                                     }),
//                                     child: ButtonRowWidget(
//                                       name: initialBottomCustomValue?.name,
//                                       flagUri:
//                                           initialBottomCustomValue?.flagUri,
//                                       dialCode:
//                                           initialBottomCustomValue?.dialCode,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Card(
//                 child: ExpansionTile(
//                   title: Text(
//                     'Country picker using cupertino bottom sheet',
//                     style: _defaultTextStyle,
//                   ),
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 16, bottom: 5),
//                             child: Column(
//                               children: [
//                                 title(title: "Default"),
//                                 ElevatedButton(
//                                   onPressed: () {
//                                     CountryPicker
//                                         .showCountryPickerCupertinoBottomSheet(
//                                       context: context,
//                                       setInitialValue:
//                                           initialCupertinoBottomDefaultValue,
//                                     ).then(
//                                       (value) {
//                                         if (value != null) {
//                                           initialCupertinoBottomDefaultValue =
//                                               value;
//                                           debugPrint(
//                                               'showCountryPickerCupertinoBottom :: ${initialCupertinoBottomDefaultValue?.name ?? ""}');
//                                           setState(() {});
//                                         }
//                                       },
//                                     );
//                                   },
//                                   child: ButtonRowWidget(
//                                     dialCode: initialCupertinoBottomDefaultValue
//                                         ?.dialCode,
//                                     flagUri: initialCupertinoBottomDefaultValue
//                                         ?.flagUri,
//                                     name: initialCupertinoBottomDefaultValue
//                                         ?.name,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: SizedBox(
//                             width: double.maxFinite,
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.only(top: 16, bottom: 5),
//                               child: Column(
//                                 children: [
//                                   title(title: "Custom"),
//                                   ElevatedButton(
//                                     onPressed: () {
//                                       CountryPicker
//                                           .showCountryPickerCupertinoBottomSheet(
//                                         setInitialValue:
//                                             initialCupertinoBottomCustomValue,
//                                         isScrollControlled: true,
//                                         context: context,
//                                         diameterRatio: 0.8,
//                                         layoutConfig: const LayoutConfig(
//                                           flagWidth: 24,
//                                           flagHeight: 24,
//                                           elementsSequence:
//                                               Sequence.codeCountryNameAndFlag,
//                                           flagDecoration: BoxDecoration(
//                                               shape: BoxShape.circle),
//                                         ),
//                                       ).then(
//                                         (value) {
//                                           if (value != null) {
//                                             initialCupertinoBottomCustomValue =
//                                                 value;
//                                             debugPrint(
//                                                 'showCountryPickerCupertinoBottom :: ${initialCupertinoBottomCustomValue?.name ?? ""}');
//                                             setState(() {});
//                                           }
//                                         },
//                                       );
//                                     },
//                                     child: ButtonRowWidget(
//                                       dialCode:
//                                           initialCupertinoBottomCustomValue
//                                               ?.dialCode,
//                                       flagUri: initialCupertinoBottomCustomValue
//                                           ?.flagUri,
//                                       name: initialCupertinoBottomCustomValue
//                                           ?.name,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Card(
//                 child: ExpansionTile(
//                   title: Text('Country picker using drop down',
//                       style: _defaultTextStyle),
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 5, bottom: 15),
//                       child: SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.32,
//                         child: CountryPickerDropDown(
//                           underline: const SizedBox.shrink(),
//                           layoutConfig: const LayoutConfig(
//                             showCountryName: false,
//                             showCountryCode: true,
//                             showCountryFlag: true,
//                             flagDecoration:
//                                 BoxDecoration(shape: BoxShape.circle),
//                             flagWidth: 18,
//                             flagHeight: 18,
//                             elementsSequence: Sequence.flagCodeAndCountryName,
//                           ),
//                           onSelectValue: (CountryData value) {
//                             debugPrint('CountryPickerDropDown ::${value.name}');
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // common elevated child widget...
// class ButtonRowWidget extends StatelessWidget {
//   const ButtonRowWidget({
//     super.key,
//     this.flagUri,
//     this.dialCode,
//     this.name,
//   });

//   final String? flagUri;
//   final String? dialCode;
//   final String? name;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(
//           width: 24,
//           height: 18,
//           flagUri ?? "",
//           package: "swiper_country_picker",
//         ),
//         const SizedBox(
//           width: 10,
//         ),
//         Flexible(
//           child: Text(
//             "${dialCode ?? ""} ${name ?? ""}",
//             overflow: TextOverflow.visible,
//             style: const TextStyle(color: Colors.black),
//           ),
//         ),
//       ],
//     );
//   }
// }
