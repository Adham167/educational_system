import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/core/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerificationBody extends StatefulWidget {
  final int length;
  const OTPVerificationBody({super.key, this.length = 4});

  @override
  State<OTPVerificationBody> createState() => _OTPVerificationBodyState();
}

class _OTPVerificationBodyState extends State<OTPVerificationBody> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    _focusNodes = List.generate(widget.length, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final c in _controllers) c.dispose();
    for (final f in _focusNodes) f.dispose();
    super.dispose();
  }

  void _onChanged(String value, int index) {
// ### حالة اللصق: لو ال value أطول من 1 فالمستخدم عمل paste
    if (value.length > 1) {
      final pasted = value;
      for (int i = 0; i < widget.length; i++) {
        final char = i < pasted.length ? pasted[i] : '';
        _controllers[i].text = char;
      }
      final code = _controllers.map((c) => c.text).join();
      if (code.length == widget.length) _verify(code);
      // نعطي التركيز لآخر خانة تم ملؤها
      final lastIndex =
          pasted.length >= widget.length ? widget.length - 1 : pasted.length;
      _focusNodes[lastIndex].requestFocus();
      return;
    }

    // ### حالة الإدخال العادي
    if (value.isNotEmpty) {
      // ننتقل للخانة اللي بعده
      if (index + 1 != widget.length) {
        _focusNodes[index + 1].requestFocus();
      } else {
        // آخر خانة: نفك الفوكس ونتحقق
        _focusNodes[index].unfocus();
        final code = _controllers.map((c) => c.text).join();
        if (code.length == widget.length) _verify(code);
      }
    } else {
      // لو المستخدم مسح الحرف (حصلت قيمة فارغة) نرجع للخانة اللي قبلها
      if (index > 0) {
        _focusNodes[index - 1].requestFocus();
        _controllers[index - 1].selection = TextSelection.fromPosition(
          TextPosition(offset: _controllers[index - 1].text.length),
        );
      }
    }
  }

  void _verify(String code) {
    // هنا تحط ال API call أو أي شيء لازم يتعمل لما الكود كامل
    print('OTP entered: $code');
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('OTP = $code')));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            Spacer(flex: 3),
            Align(
              alignment: Alignment.center,
              child: Text("OTP Verification", style: AppStyles.styleBold33),
            ),
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(widget.length, (index) {
                return SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    autofocus: index == 0,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    onChanged: (value) => _onChanged(value, index),
                  ),
                );
              }),
            ),
            SizedBox(height: 64),
            CustomElevatedButton(
              text: "VERIFY",
              textStyle: AppStyles.styleRegularWhite16,
              ontap: () {
                final code = _controllers.map((c) => c.text).join();
                if (code.length == widget.length)
                  _verify(code);
                else
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please complete the code')),
                  );
              },
              color: AppColors.primary,
              Width: MediaQuery.of(context).size.width,
            ),
            Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
