import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:legba/companents/toolbar.dart';
import 'package:legba/config/app_icons.dart';
import 'package:legba/config/app_strings.dart';
import 'package:legba/styles/app_color.dart';

class NearbyPage extends StatefulWidget {
  NearbyPage({super.key});

  @override
  State<NearbyPage> createState() => _NearbyPageState();
}

class _NearbyPageState extends State<NearbyPage> {
  final myLoc = LatLng(37.0600626, 35.3549329);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.nearby,
      ),
      body: FlutterMap(
        options: MapOptions(
          //Konum bilgisini alır ilk başta göstermek için

          initialCenter: myLoc,

          initialZoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            // Plenty of other options available!
          ),
          MarkerLayer(markers: [
            Marker(
                width: 100,
                height: 80,
                point: myLoc,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        "Username",
                        style: TextStyle(color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                    ),
                    SvgPicture.asset(
                      AppIcons.icLocation,
                      colorFilter:
                          ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                    )
                  ],
                ))
          ])
        ],
      ),
    );
  }
}
