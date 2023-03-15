import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

import 'constants.dart';

class CallPage extends StatelessWidget {
   CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;
  final String localUserID = Random().nextInt(10000).toString();
  @override
  Widget build(BuildContext context) {

    // return ZegoUIKitPrebuiltLiveStreaming(
    //   appID: appId,
    //   appSign: appSign,
    //     userID: localUserID,
    //     userName: "user_$localUserID",
    //   liveID: callID,
    //   config:
    //   // isHost
    //   //     ?
    //   ZegoUIKitPrebuiltLiveStreamingConfig.host()
    //       // :
    //   // ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
    // );

    return ZegoUIKitPrebuiltCall(
      appID: appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: localUserID,
      userName: "user_$localUserID",
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );

  }
}