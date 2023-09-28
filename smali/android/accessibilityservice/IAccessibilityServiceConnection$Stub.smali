# classes.dex

.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final TRANSACTION_disableSelf:I = 0xe

.field static final TRANSACTION_dispatchGesture:I = 0x21

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x4

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x5

.field static final TRANSACTION_findFocus:I = 0x6

.field static final TRANSACTION_focusSearch:I = 0x7

.field static final TRANSACTION_getCurrentMagnificationRegion:I = 0x15

.field static final TRANSACTION_getMagnificationCenterX:I = 0x12

.field static final TRANSACTION_getMagnificationCenterY:I = 0x13

.field static final TRANSACTION_getMagnificationConfig:I = 0x10

.field static final TRANSACTION_getMagnificationRegion:I = 0x14

.field static final TRANSACTION_getMagnificationScale:I = 0x11

.field static final TRANSACTION_getOverlayWindowToken:I = 0x23

.field static final TRANSACTION_getServiceInfo:I = 0xb

.field static final TRANSACTION_getSoftKeyboardShowMode:I = 0x1b

.field static final TRANSACTION_getSystemActions:I = 0xd

.field static final TRANSACTION_getWindow:I = 0x9

.field static final TRANSACTION_getWindowIdForLeashToken:I = 0x24

.field static final TRANSACTION_getWindows:I = 0xa

.field static final TRANSACTION_isAccessibilityButtonAvailable:I = 0x1f

.field static final TRANSACTION_isFingerprintGestureDetectionAvailable:I = 0x22

.field static final TRANSACTION_logTrace:I = 0x2a

.field static final TRANSACTION_onDoubleTap:I = 0x2f

.field static final TRANSACTION_onDoubleTapAndHold:I = 0x30

.field static final TRANSACTION_performAccessibilityAction:I = 0x8

.field static final TRANSACTION_performGlobalAction:I = 0xc

.field static final TRANSACTION_requestDelegating:I = 0x2e

.field static final TRANSACTION_requestDragging:I = 0x2d

.field static final TRANSACTION_requestTouchExploration:I = 0x2c

.field static final TRANSACTION_resetCurrentMagnification:I = 0x17

.field static final TRANSACTION_resetMagnification:I = 0x16

.field static final TRANSACTION_sendGesture:I = 0x20

.field static final TRANSACTION_setAnimationScale:I = 0x31

.field static final TRANSACTION_setAttributionTag:I = 0x2

.field static final TRANSACTION_setCacheEnabled:I = 0x29

.field static final TRANSACTION_setFocusAppearance:I = 0x28

.field static final TRANSACTION_setGestureDetectionPassthroughRegion:I = 0x26

.field static final TRANSACTION_setInputMethodEnabled:I = 0x1e

.field static final TRANSACTION_setMagnificationCallbackEnabled:I = 0x19

.field static final TRANSACTION_setMagnificationConfig:I = 0x18

.field static final TRANSACTION_setOnKeyEventResult:I = 0xf

.field static final TRANSACTION_setServiceDetectsGesturesEnabled:I = 0x2b

.field static final TRANSACTION_setServiceInfo:I = 0x1

.field static final TRANSACTION_setSoftKeyboardCallbackEnabled:I = 0x1c

.field static final TRANSACTION_setSoftKeyboardShowMode:I = 0x1a

.field static final TRANSACTION_setTouchExplorationPassthroughRegion:I = 0x27

.field static final TRANSACTION_switchToInputMethod:I = 0x1d

.field static final TRANSACTION_takeScreenshot:I = 0x25


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    return-object v1

    :cond_14
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_b2

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x31
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    :pswitch_9  #0x30
    const-string/jumbo v0, "onDoubleTapAndHold"

    return-object v0

    :pswitch_d  #0x2f
    const-string/jumbo v0, "onDoubleTap"

    return-object v0

    :pswitch_11  #0x2e
    const-string/jumbo v0, "requestDelegating"

    return-object v0

    :pswitch_15  #0x2d
    const-string/jumbo v0, "requestDragging"

    return-object v0

    :pswitch_19  #0x2c
    const-string/jumbo v0, "requestTouchExploration"

    return-object v0

    :pswitch_1d  #0x2b
    const-string/jumbo v0, "setServiceDetectsGesturesEnabled"

    return-object v0

    :pswitch_21  #0x2a
    const-string v0, "logTrace"

    return-object v0

    :pswitch_24  #0x29
    const-string/jumbo v0, "setCacheEnabled"

    return-object v0

    :pswitch_28  #0x28
    const-string/jumbo v0, "setFocusAppearance"

    return-object v0

    :pswitch_2c  #0x27
    const-string/jumbo v0, "setTouchExplorationPassthroughRegion"

    return-object v0

    :pswitch_30  #0x26
    const-string/jumbo v0, "setGestureDetectionPassthroughRegion"

    return-object v0

    :pswitch_34  #0x25
    const-string/jumbo v0, "takeScreenshot"

    return-object v0

    :pswitch_38  #0x24
    const-string v0, "getWindowIdForLeashToken"

    return-object v0

    :pswitch_3b  #0x23
    const-string v0, "getOverlayWindowToken"

    return-object v0

    :pswitch_3e  #0x22
    const-string v0, "isFingerprintGestureDetectionAvailable"

    return-object v0

    :pswitch_41  #0x21
    const-string v0, "dispatchGesture"

    return-object v0

    :pswitch_44  #0x20
    const-string/jumbo v0, "sendGesture"

    return-object v0

    :pswitch_48  #0x1f
    const-string v0, "isAccessibilityButtonAvailable"

    return-object v0

    :pswitch_4b  #0x1e
    const-string/jumbo v0, "setInputMethodEnabled"

    return-object v0

    :pswitch_4f  #0x1d
    const-string/jumbo v0, "switchToInputMethod"

    return-object v0

    :pswitch_53  #0x1c
    const-string/jumbo v0, "setSoftKeyboardCallbackEnabled"

    return-object v0

    :pswitch_57  #0x1b
    const-string v0, "getSoftKeyboardShowMode"

    return-object v0

    :pswitch_5a  #0x1a
    const-string/jumbo v0, "setSoftKeyboardShowMode"

    return-object v0

    :pswitch_5e  #0x19
    const-string/jumbo v0, "setMagnificationCallbackEnabled"

    return-object v0

    :pswitch_62  #0x18
    const-string/jumbo v0, "setMagnificationConfig"

    return-object v0

    :pswitch_66  #0x17
    const-string/jumbo v0, "resetCurrentMagnification"

    return-object v0

    :pswitch_6a  #0x16
    const-string/jumbo v0, "resetMagnification"

    return-object v0

    :pswitch_6e  #0x15
    const-string v0, "getCurrentMagnificationRegion"

    return-object v0

    :pswitch_71  #0x14
    const-string v0, "getMagnificationRegion"

    return-object v0

    :pswitch_74  #0x13
    const-string v0, "getMagnificationCenterY"

    return-object v0

    :pswitch_77  #0x12
    const-string v0, "getMagnificationCenterX"

    return-object v0

    :pswitch_7a  #0x11
    const-string v0, "getMagnificationScale"

    return-object v0

    :pswitch_7d  #0x10
    const-string v0, "getMagnificationConfig"

    return-object v0

    :pswitch_80  #0xf
    const-string/jumbo v0, "setOnKeyEventResult"

    return-object v0

    :pswitch_84  #0xe
    const-string v0, "disableSelf"

    return-object v0

    :pswitch_87  #0xd
    const-string v0, "getSystemActions"

    return-object v0

    :pswitch_8a  #0xc
    const-string/jumbo v0, "performGlobalAction"

    return-object v0

    :pswitch_8e  #0xb
    const-string v0, "getServiceInfo"

    return-object v0

    :pswitch_91  #0xa
    const-string v0, "getWindows"

    return-object v0

    :pswitch_94  #0x9
    const-string v0, "getWindow"

    return-object v0

    :pswitch_97  #0x8
    const-string/jumbo v0, "performAccessibilityAction"

    return-object v0

    :pswitch_9b  #0x7
    const-string v0, "focusSearch"

    return-object v0

    :pswitch_9e  #0x6
    const-string v0, "findFocus"

    return-object v0

    :pswitch_a1  #0x5
    const-string v0, "findAccessibilityNodeInfosByViewId"

    return-object v0

    :pswitch_a4  #0x4
    const-string v0, "findAccessibilityNodeInfosByText"

    return-object v0

    :pswitch_a7  #0x3
    const-string v0, "findAccessibilityNodeInfoByAccessibilityId"

    return-object v0

    :pswitch_aa  #0x2
    const-string/jumbo v0, "setAttributionTag"

    return-object v0

    :pswitch_ae  #0x1
    const-string/jumbo v0, "setServiceInfo"

    return-object v0

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_ae  #00000001
        :pswitch_aa  #00000002
        :pswitch_a7  #00000003
        :pswitch_a4  #00000004
        :pswitch_a1  #00000005
        :pswitch_9e  #00000006
        :pswitch_9b  #00000007
        :pswitch_97  #00000008
        :pswitch_94  #00000009
        :pswitch_91  #0000000a
        :pswitch_8e  #0000000b
        :pswitch_8a  #0000000c
        :pswitch_87  #0000000d
        :pswitch_84  #0000000e
        :pswitch_80  #0000000f
        :pswitch_7d  #00000010
        :pswitch_7a  #00000011
        :pswitch_77  #00000012
        :pswitch_74  #00000013
        :pswitch_71  #00000014
        :pswitch_6e  #00000015
        :pswitch_6a  #00000016
        :pswitch_66  #00000017
        :pswitch_62  #00000018
        :pswitch_5e  #00000019
        :pswitch_5a  #0000001a
        :pswitch_57  #0000001b
        :pswitch_53  #0000001c
        :pswitch_4f  #0000001d
        :pswitch_4b  #0000001e
        :pswitch_48  #0000001f
        :pswitch_44  #00000020
        :pswitch_41  #00000021
        :pswitch_3e  #00000022
        :pswitch_3b  #00000023
        :pswitch_38  #00000024
        :pswitch_34  #00000025
        :pswitch_30  #00000026
        :pswitch_2c  #00000027
        :pswitch_28  #00000028
        :pswitch_24  #00000029
        :pswitch_21  #0000002a
        :pswitch_1d  #0000002b
        :pswitch_19  #0000002c
        :pswitch_15  #0000002d
        :pswitch_11  #0000002e
        :pswitch_d  #0000002f
        :pswitch_9  #00000030
        :pswitch_5  #00000031
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x30

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.accessibilityservice.IAccessibilityServiceConnection"

    const/4 v10, 0x1

    if-lt v13, v10, :cond_15

    const v0, 0xffffff

    if-gt v13, v0, :cond_15

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v13, :pswitch_data_54e

    packed-switch v13, :pswitch_data_554

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_24  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAnimationScale(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_54c

    :pswitch_36  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTapAndHold(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_54c

    :pswitch_48  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTap(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_54c

    :pswitch_5a  #0x2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDelegating(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_54c

    :pswitch_6c  #0x2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDragging(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_54c

    :pswitch_82  #0x2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestTouchExploration(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_54c

    :pswitch_94  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceDetectsGesturesEnabled(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_54c

    :pswitch_aa  #0x2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-wide/from16 v8, v23

    move v13, v10

    move/from16 v10, v25

    move-object/from16 v27, v11

    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V

    goto/16 :goto_54c

    :pswitch_ed  #0x29
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setCacheEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_ff  #0x28
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setFocusAppearance(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_115  #0x27
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_12f  #0x26
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_149  #0x25
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->takeScreenshot(ILandroid/os/RemoteCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_163  #0x24
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_54c

    :pswitch_179  #0x23
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getOverlayWindowToken(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_54c

    :pswitch_18f  #0x22
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isFingerprintGestureDetectionAvailable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_19e  #0x21
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_1bc  #0x20
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_1d6  #0x1f
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isAccessibilityButtonAvailable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_1e5  #0x1e
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_54c

    :pswitch_1ff  #0x1d
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->switchToInputMethod(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_215  #0x1c
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardCallbackEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_227  #0x1b
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSoftKeyboardShowMode()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_54c

    :pswitch_236  #0x1a
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardShowMode(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_24c  #0x19
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationCallbackEnabled(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_262  #0x18
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/MagnificationConfig;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_284  #0x17
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetCurrentMagnification(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_29e  #0x16
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetMagnification(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_2b8  #0x15
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCurrentMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_54c

    :pswitch_2ce  #0x14
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_54c

    :pswitch_2e4  #0x13
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterY(I)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_54c

    :pswitch_2fa  #0x12
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterX(I)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_54c

    :pswitch_310  #0x11
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationScale(I)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_54c

    :pswitch_326  #0x10
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_54c

    :pswitch_33c  #0xf
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    goto/16 :goto_54c

    :pswitch_34f  #0xe
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->disableSelf()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_54c

    :pswitch_35a  #0xd
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSystemActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_54c

    :pswitch_369  #0xc
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_37f  #0xb
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_54c

    :pswitch_38e  #0xa
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_54c

    :pswitch_39d  #0x9
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_54c

    :pswitch_3b3  #0x8
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v10

    move-wide/from16 v2, v16

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-wide/from16 v8, v21

    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_54c

    :pswitch_3f9  #0x7
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_54c

    :pswitch_433  #0x6
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_54c

    :pswitch_46d  #0x5
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_54c

    :pswitch_4a7  #0x4
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_54c

    :pswitch_4e1  #0x3
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v10

    move-wide/from16 v2, v16

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-wide/from16 v7, v20

    move-object/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_54c

    :pswitch_526  #0x2
    move v13, v10

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAttributionTag(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_54c

    :pswitch_537  #0x1
    move v13, v10

    move-object/from16 v27, v11

    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_54c
    return v13

    nop

    :pswitch_data_54e
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_554
    .packed-switch 0x1
        :pswitch_537  #00000001
        :pswitch_526  #00000002
        :pswitch_4e1  #00000003
        :pswitch_4a7  #00000004
        :pswitch_46d  #00000005
        :pswitch_433  #00000006
        :pswitch_3f9  #00000007
        :pswitch_3b3  #00000008
        :pswitch_39d  #00000009
        :pswitch_38e  #0000000a
        :pswitch_37f  #0000000b
        :pswitch_369  #0000000c
        :pswitch_35a  #0000000d
        :pswitch_34f  #0000000e
        :pswitch_33c  #0000000f
        :pswitch_326  #00000010
        :pswitch_310  #00000011
        :pswitch_2fa  #00000012
        :pswitch_2e4  #00000013
        :pswitch_2ce  #00000014
        :pswitch_2b8  #00000015
        :pswitch_29e  #00000016
        :pswitch_284  #00000017
        :pswitch_262  #00000018
        :pswitch_24c  #00000019
        :pswitch_236  #0000001a
        :pswitch_227  #0000001b
        :pswitch_215  #0000001c
        :pswitch_1ff  #0000001d
        :pswitch_1e5  #0000001e
        :pswitch_1d6  #0000001f
        :pswitch_1bc  #00000020
        :pswitch_19e  #00000021
        :pswitch_18f  #00000022
        :pswitch_179  #00000023
        :pswitch_163  #00000024
        :pswitch_149  #00000025
        :pswitch_12f  #00000026
        :pswitch_115  #00000027
        :pswitch_ff  #00000028
        :pswitch_ed  #00000029
        :pswitch_aa  #0000002a
        :pswitch_94  #0000002b
        :pswitch_82  #0000002c
        :pswitch_6c  #0000002d
        :pswitch_5a  #0000002e
        :pswitch_48  #0000002f
        :pswitch_36  #00000030
        :pswitch_24  #00000031
    .end packed-switch
.end method
