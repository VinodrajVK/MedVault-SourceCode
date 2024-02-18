import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class EmtformController extends GetxController {
  final RxString uid = ''.obs;
  final RxString receiverId = ''.obs; // Added receiverId field
  final RxString emergencyType = ''.obs;
  final Rx<MaterialColor> triageLevel = Colors.red.obs;
  final RxString description = ''.obs;
  final RxString bp = ''.obs;
  final RxString spo2 = ''.obs;
  final RxString pulseRate = ''.obs;

  // Speech Recognition
  final stt.SpeechToText _speech = stt.SpeechToText();
  final RxString recognizedText = ''.obs;
  final RxBool isListening = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeSpeech();
  }

  void initializeSpeech() async {
    final hasSpeech = await _speech.initialize();

    if (hasSpeech) {
      print('Speech recognition initialized successfully');
    } else {
      print('Error initializing speech recognition');
    }
  }

  String? toggleListening() {
    if (_speech.isListening) {
      _speech.stop();
      isListening.value = false;
    } else {
      _speech.listen(
        onResult: (result) {
          recognizedText.value = result.recognizedWords;
        },
      );
      isListening.value = true;
    }
    return recognizedText.value;
  }

  void setUid(String value) => uid.value = value;
  void setReceiverId(String value) =>
      receiverId.value = value; // Setter for receiverId
  void setEmergencyType(String value) => emergencyType.value = value;
  //void setTriageLevel(String value) => triageLevel.value = value;
  void setDescription(String value) => description.value = value;
  void setBp(String value) => bp.value = value;
  void setSpo2(String value) => spo2.value = value;
  void setPulseRate(String value) => pulseRate.value = value;

  String? validateUID(String? value) {
    if (value == null || value.isEmpty) {
      return 'UID is required';
    }
    return null;
  }

  String? validateReceiverId(String? value) =>
      validateUID(value); // Validation for receiverId

  String? validateEmergencyType(String? value) {
    if (value == null || value.isEmpty) {
      return 'Emergency Type is required';
    }
    return null;
  }

  // Other validation methods for triage level, description, bp, spo2, pulse rate, etc. can be added similarly.

  @override
  void onClose() {
    _speech.stop();
    super.onClose();
  }
}
