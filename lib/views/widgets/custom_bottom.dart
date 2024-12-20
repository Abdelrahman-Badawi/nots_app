import 'package:flutter/material.dart';
import 'package:notsapp/constants/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading = false});
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 28.0,
                  width: 28.0,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ),
      ),
    );
  }
}
