import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruralclap_app/pages/job_information.dart';
import 'package:ruralclap_app/utls/routes.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 3,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          child: Hero(
            tag: 'ListTile-Hero',
            // Wrap the ListTile in a Material widget so the ListTile has someplace
            // to draw the animated colors during the hero transition.
            child: Material(
              child: ListTile(
                leading: Icon(Icons.business, size: 45),
                title: Text('Position'),
                subtitle: Text('Company \t rating \nLocation'),
                isThreeLine: true,
                onTap: () {
                  Get.toNamed(RoutesClass.jobInformationPageRoute);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
