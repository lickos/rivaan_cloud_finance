import 'package:cloudfinance/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          'Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Row(
          children: [
            SizedBox(
              height: 40,
              width: size.width * 0.25,
              child: SearchBar(
                leading: const Icon(Icons.search),
                hintText: 'Search Here',
                elevation: const MaterialStatePropertyAll<double>(0.0),
                backgroundColor: const MaterialStatePropertyAll<Color>(
                  AppColors.bgColor,
                ),
                shadowColor: const MaterialStatePropertyAll<Color>(
                  Colors.transparent,
                ),
                shape: MaterialStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      7.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
              ),
              height: 40,
              padding: const EdgeInsets.all(8.0),
              child: const Badge(
                label: Text("1"),
                child: Icon(
                  Icons.notifications,
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Row(
              children: [
                CircleAvatar(
                  child: Image.network(
                      'https://cdn2.iconfinder.com/data/icons/avatars-60/5985/30-Scientist-1024.png'),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Georgios Sgoutas',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'myemail@myemail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
