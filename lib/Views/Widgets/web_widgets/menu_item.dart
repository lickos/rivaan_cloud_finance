// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloudfinance/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final IconData itemIcon;
  final String itemLabel;
  final int messages;
  final bool bold;
  const MenuItem({
    Key? key,
    required this.itemIcon,
    required this.itemLabel,
    this.messages = 0,
    this.bold = false,
  }) : super(key: key);

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (hover) {
        setState(() {
          hovered = hover;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: hovered ? AppColors.blueColor : Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Row(
            children: [
              Icon(
                widget.itemIcon,
                color: hovered ? Colors.white : AppColors.grayColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
                child: Text(
                  widget.itemLabel,
                  style: TextStyle(
                    color: hovered ? Colors.white : AppColors.grayColor,
                    fontWeight:
                        widget.bold ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              widget.messages > 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Badge(
                        backgroundColor: Colors.red,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        label: Text('${widget.messages}'),
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
