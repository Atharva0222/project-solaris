import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'subscription_plan_widget.dart' show SubscriptionPlanWidget;
import 'package:flutter/material.dart';

class SubscriptionPlanModel extends FlutterFlowModel<SubscriptionPlanWidget> {
  ///  Local state fields for this page.

  bool basicPlan = false;

  bool proPlan = false;

  bool premiumPlan = false;

  bool seePlans = false;

  int? duration = 1;

  bool plusPlan = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
