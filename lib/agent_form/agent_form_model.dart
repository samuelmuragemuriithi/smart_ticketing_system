import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navagent_widget.dart';
import '/components/user_widget.dart';
import '/components/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'agent_form_widget.dart' show AgentFormWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgentFormModel extends FlutterFlowModel<AgentFormWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for user component.
  late UserModel userModel1;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for navagent component.
  late NavagentModel navagentModel;
  // Model for web_Nav component.
  late WebNavModel webNavModel;
  // Model for user component.
  late UserModel userModel2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    userModel1 = createModel(context, () => UserModel());
    navagentModel = createModel(context, () => NavagentModel());
    webNavModel = createModel(context, () => WebNavModel());
    userModel2 = createModel(context, () => UserModel());
  }

  @override
  void dispose() {
    userModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    navagentModel.dispose();
    webNavModel.dispose();
    userModel2.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
