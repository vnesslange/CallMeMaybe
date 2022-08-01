import 'package:call_me_maybe/style.dart';
import 'package:flutter/material.dart';

class Job extends StatelessWidget {
  final List jobList;
  const Job(this.jobList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.00),
              alignment: Alignment.centerLeft,
              child: Text(
                jobList[1],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Row(mainAxisSize: MainAxisSize.min, children: [
            JobStyle(jobList[0], Alignment.centerLeft),
            JobStyle(jobList[4], Alignment.bottomRight)
          ]),
          JobStyle2(jobList[2]),
          Container(
              alignment: Alignment.centerLeft,
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.00),
              child: Text(jobList[3])),
        ],
      ),
    );
  }
}

var firstJob = [
  'Bob\'s Pet Empire',
  'Dog Walker',
  'Jan 18 - June 20',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque condimentum massa lectus, sed faucibus mi tristique volutpat. Pellentesque quis magna nec justo viverra feugiat. Nulla dignissim vitae libero vel vulputate. Morbi in massa pharetra, rutrum enim ut, lobortis est. Fusce.',
  'Brooklyn, NY',
];

var secondJob = [
  'Bareburger',
  'Server',
  'Jan 13 - April 16',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed ipsum non urna vulputate tincidunt nec eleifend est. In hac habitasse platea dictumst. Pellentesque semper sodales tortor. Aliquam scelerisque turpis nulla, eu elementum lectus placerat at. Ut a iaculis turpis. Maecenas sit amet turpis sollicitudin, maximus sapien at, ultrices ex.',
  'Portland, OR',
];

var thirdJob = [
  'Northern Territory',
  'Boss Bitch',
  'Jan 18 - June 20',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce imperdiet placerat malesuada. Fusce vitae laoreet leo, vel hendrerit massa. Fusce volutpat mattis tellus accumsan pulvinar.',
  'Seatle, WA',
];

var fourthJob = [
  'Westville Pub',
  'Bartender',
  'June 20 - Current',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque condimentum massa lectus, sed faucibus mi tristique volutpat. Pellentesque quis magna nec justo viverra feugiat. Nulla dignissim vitae libero vel vulputate. Morbi in massa pharetra, rutrum enim ut, lobortis est. Fusce.',
  'Atlanta, GA',
];

var fifthJob = [
  'Chicken Farm',
  'Queen of Chickens',
  'Sep 2005 - May 2010',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque condimentum massa lectus, sed faucibus mi tristique volutpat. Pellentesque quis magna nec justo viverra feugiat. Nulla dignissim vitae libero vel vulputate. Morbi in massa pharetra, rutrum enim ut, lobortis est. Fusce.',
  'Raleigh, NC',
];
