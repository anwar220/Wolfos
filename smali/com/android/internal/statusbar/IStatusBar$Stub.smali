# classes4.dex

.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_abortTransient:I = 0x32

.field static final TRANSACTION_addQsTile:I = 0x20

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x15

.field static final TRANSACTION_appTransitionFinished:I = 0x17

.field static final TRANSACTION_appTransitionPending:I = 0x14

.field static final TRANSACTION_appTransitionStarting:I = 0x16

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x10

.field static final TRANSACTION_cancelRequestAddTile:I = 0x41

.field static final TRANSACTION_clickQsTile:I = 0x22

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissInattentiveSleepWarning:I = 0x34

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x12

.field static final TRANSACTION_handleSystemKey:I = 0x23

.field static final TRANSACTION_handleWindowManagerLoggingCommand:I = 0x39

.field static final TRANSACTION_hideAuthenticationDialog:I = 0x2b

.field static final TRANSACTION_hideRecentApps:I = 0xc

.field static final TRANSACTION_hideToast:I = 0x36

.field static final TRANSACTION_onBiometricAuthenticated:I = 0x28

.field static final TRANSACTION_onBiometricError:I = 0x2a

.field static final TRANSACTION_onBiometricHelp:I = 0x29

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1a

.field static final TRANSACTION_onDisplayReady:I = 0x2e

.field static final TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x1b

.field static final TRANSACTION_onProposedRotationChanged:I = 0x1e

.field static final TRANSACTION_onRecentsAnimationStateChanged:I = 0x2f

.field static final TRANSACTION_onSystemBarAttributesChanged:I = 0x30

.field static final TRANSACTION_passThroughShellCommand:I = 0x3c

.field static final TRANSACTION_preloadRecentApps:I = 0xf

.field static final TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x44

.field static final TRANSACTION_remQsTile:I = 0x21

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_requestAddTile:I = 0x40

.field static final TRANSACTION_requestTileServiceListeningState:I = 0x3f

.field static final TRANSACTION_requestWindowMagnificationConnection:I = 0x3b

.field static final TRANSACTION_runGcForTest:I = 0x3e

.field static final TRANSACTION_setBiometicContextListener:I = 0x2c

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x3d

.field static final TRANSACTION_setStatus:I = 0x46

.field static final TRANSACTION_setTopAppHidesStatusBar:I = 0x1f

.field static final TRANSACTION_setUdfpsHbmListener:I = 0x2d

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x18

.field static final TRANSACTION_showAuthenticationDialog:I = 0x27

.field static final TRANSACTION_showGlobalActionsMenu:I = 0x1d

.field static final TRANSACTION_showInattentiveSleepWarning:I = 0x33

.field static final TRANSACTION_showPictureInPictureMenu:I = 0x1c

.field static final TRANSACTION_showPinningEnterExitToast:I = 0x24

.field static final TRANSACTION_showPinningEscapeToast:I = 0x25

.field static final TRANSACTION_showRecentApps:I = 0xb

.field static final TRANSACTION_showScreenPinningRequest:I = 0x11

.field static final TRANSACTION_showShutdownUi:I = 0x26

.field static final TRANSACTION_showToast:I = 0x35

.field static final TRANSACTION_showTransient:I = 0x31

.field static final TRANSACTION_showWirelessChargingAnimation:I = 0x8

.field static final TRANSACTION_startAssist:I = 0x19

.field static final TRANSACTION_startTracing:I = 0x37

.field static final TRANSACTION_stopTracing:I = 0x38

.field static final TRANSACTION_suppressAmbientDisplay:I = 0x3a

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x13

.field static final TRANSACTION_togglePanel:I = 0x7

.field static final TRANSACTION_toggleRecentApps:I = 0xd

.field static final TRANSACTION_toggleSplitScreen:I = 0xe

.field static final TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x45

.field static final TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x43

.field static final TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x42


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x46
    const-string/jumbo v0, "setStatus"

    return-object v0

    :pswitch_9  #0x45
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    :pswitch_d  #0x44
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    :pswitch_11  #0x43
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    :pswitch_15  #0x42
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    :pswitch_19  #0x41
    const-string v0, "cancelRequestAddTile"

    return-object v0

    :pswitch_1c  #0x40
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    :pswitch_20  #0x3f
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    :pswitch_24  #0x3e
    const-string/jumbo v0, "runGcForTest"

    return-object v0

    :pswitch_28  #0x3d
    const-string/jumbo v0, "setNavigationBarLumaSamplingEnabled"

    return-object v0

    :pswitch_2c  #0x3c
    const-string/jumbo v0, "passThroughShellCommand"

    return-object v0

    :pswitch_30  #0x3b
    const-string/jumbo v0, "requestWindowMagnificationConnection"

    return-object v0

    :pswitch_34  #0x3a
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    :pswitch_38  #0x39
    const-string v0, "handleWindowManagerLoggingCommand"

    return-object v0

    :pswitch_3b  #0x38
    const-string/jumbo v0, "stopTracing"

    return-object v0

    :pswitch_3f  #0x37
    const-string/jumbo v0, "startTracing"

    return-object v0

    :pswitch_43  #0x36
    const-string v0, "hideToast"

    return-object v0

    :pswitch_46  #0x35
    const-string/jumbo v0, "showToast"

    return-object v0

    :pswitch_4a  #0x34
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    :pswitch_4d  #0x33
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    :pswitch_51  #0x32
    const-string v0, "abortTransient"

    return-object v0

    :pswitch_54  #0x31
    const-string/jumbo v0, "showTransient"

    return-object v0

    :pswitch_58  #0x30
    const-string/jumbo v0, "onSystemBarAttributesChanged"

    return-object v0

    :pswitch_5c  #0x2f
    const-string/jumbo v0, "onRecentsAnimationStateChanged"

    return-object v0

    :pswitch_60  #0x2e
    const-string/jumbo v0, "onDisplayReady"

    return-object v0

    :pswitch_64  #0x2d
    const-string/jumbo v0, "setUdfpsHbmListener"

    return-object v0

    :pswitch_68  #0x2c
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    :pswitch_6c  #0x2b
    const-string v0, "hideAuthenticationDialog"

    return-object v0

    :pswitch_6f  #0x2a
    const-string/jumbo v0, "onBiometricError"

    return-object v0

    :pswitch_73  #0x29
    const-string/jumbo v0, "onBiometricHelp"

    return-object v0

    :pswitch_77  #0x28
    const-string/jumbo v0, "onBiometricAuthenticated"

    return-object v0

    :pswitch_7b  #0x27
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    :pswitch_7f  #0x26
    const-string/jumbo v0, "showShutdownUi"

    return-object v0

    :pswitch_83  #0x25
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    :pswitch_87  #0x24
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    :pswitch_8b  #0x23
    const-string v0, "handleSystemKey"

    return-object v0

    :pswitch_8e  #0x22
    const-string v0, "clickQsTile"

    return-object v0

    :pswitch_91  #0x21
    const-string/jumbo v0, "remQsTile"

    return-object v0

    :pswitch_95  #0x20
    const-string v0, "addQsTile"

    return-object v0

    :pswitch_98  #0x1f
    const-string/jumbo v0, "setTopAppHidesStatusBar"

    return-object v0

    :pswitch_9c  #0x1e
    const-string/jumbo v0, "onProposedRotationChanged"

    return-object v0

    :pswitch_a0  #0x1d
    const-string/jumbo v0, "showGlobalActionsMenu"

    return-object v0

    :pswitch_a4  #0x1c
    const-string/jumbo v0, "showPictureInPictureMenu"

    return-object v0

    :pswitch_a8  #0x1b
    const-string/jumbo v0, "onEmergencyActionLaunchGestureDetected"

    return-object v0

    :pswitch_ac  #0x1a
    const-string/jumbo v0, "onCameraLaunchGestureDetected"

    return-object v0

    :pswitch_b0  #0x19
    const-string/jumbo v0, "startAssist"

    return-object v0

    :pswitch_b4  #0x18
    const-string/jumbo v0, "showAssistDisclosure"

    return-object v0

    :pswitch_b8  #0x17
    const-string v0, "appTransitionFinished"

    return-object v0

    :pswitch_bb  #0x16
    const-string v0, "appTransitionStarting"

    return-object v0

    :pswitch_be  #0x15
    const-string v0, "appTransitionCancelled"

    return-object v0

    :pswitch_c1  #0x14
    const-string v0, "appTransitionPending"

    return-object v0

    :pswitch_c4  #0x13
    const-string/jumbo v0, "toggleKeyboardShortcutsMenu"

    return-object v0

    :pswitch_c8  #0x12
    const-string v0, "dismissKeyboardShortcutsMenu"

    return-object v0

    :pswitch_cb  #0x11
    const-string/jumbo v0, "showScreenPinningRequest"

    return-object v0

    :pswitch_cf  #0x10
    const-string v0, "cancelPreloadRecentApps"

    return-object v0

    :pswitch_d2  #0xf
    const-string/jumbo v0, "preloadRecentApps"

    return-object v0

    :pswitch_d6  #0xe
    const-string/jumbo v0, "toggleSplitScreen"

    return-object v0

    :pswitch_da  #0xd
    const-string/jumbo v0, "toggleRecentApps"

    return-object v0

    :pswitch_de  #0xc
    const-string v0, "hideRecentApps"

    return-object v0

    :pswitch_e1  #0xb
    const-string/jumbo v0, "showRecentApps"

    return-object v0

    :pswitch_e5  #0xa
    const-string/jumbo v0, "setWindowState"

    return-object v0

    :pswitch_e9  #0x9
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    :pswitch_ed  #0x8
    const-string/jumbo v0, "showWirelessChargingAnimation"

    return-object v0

    :pswitch_f1  #0x7
    const-string/jumbo v0, "togglePanel"

    return-object v0

    :pswitch_f5  #0x6
    const-string v0, "animateCollapsePanels"

    return-object v0

    :pswitch_f8  #0x5
    const-string v0, "animateExpandSettingsPanel"

    return-object v0

    :pswitch_fb  #0x4
    const-string v0, "animateExpandNotificationsPanel"

    return-object v0

    :pswitch_fe  #0x3
    const-string v0, "disable"

    return-object v0

    :pswitch_101  #0x2
    const-string/jumbo v0, "removeIcon"

    return-object v0

    :pswitch_105  #0x1
    const-string/jumbo v0, "setIcon"

    return-object v0

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_105  #00000001
        :pswitch_101  #00000002
        :pswitch_fe  #00000003
        :pswitch_fb  #00000004
        :pswitch_f8  #00000005
        :pswitch_f5  #00000006
        :pswitch_f1  #00000007
        :pswitch_ed  #00000008
        :pswitch_e9  #00000009
        :pswitch_e5  #0000000a
        :pswitch_e1  #0000000b
        :pswitch_de  #0000000c
        :pswitch_da  #0000000d
        :pswitch_d6  #0000000e
        :pswitch_d2  #0000000f
        :pswitch_cf  #00000010
        :pswitch_cb  #00000011
        :pswitch_c8  #00000012
        :pswitch_c4  #00000013
        :pswitch_c1  #00000014
        :pswitch_be  #00000015
        :pswitch_bb  #00000016
        :pswitch_b8  #00000017
        :pswitch_b4  #00000018
        :pswitch_b0  #00000019
        :pswitch_ac  #0000001a
        :pswitch_a8  #0000001b
        :pswitch_a4  #0000001c
        :pswitch_a0  #0000001d
        :pswitch_9c  #0000001e
        :pswitch_98  #0000001f
        :pswitch_95  #00000020
        :pswitch_91  #00000021
        :pswitch_8e  #00000022
        :pswitch_8b  #00000023
        :pswitch_87  #00000024
        :pswitch_83  #00000025
        :pswitch_7f  #00000026
        :pswitch_7b  #00000027
        :pswitch_77  #00000028
        :pswitch_73  #00000029
        :pswitch_6f  #0000002a
        :pswitch_6c  #0000002b
        :pswitch_68  #0000002c
        :pswitch_64  #0000002d
        :pswitch_60  #0000002e
        :pswitch_5c  #0000002f
        :pswitch_58  #00000030
        :pswitch_54  #00000031
        :pswitch_51  #00000032
        :pswitch_4d  #00000033
        :pswitch_4a  #00000034
        :pswitch_46  #00000035
        :pswitch_43  #00000036
        :pswitch_3f  #00000037
        :pswitch_3b  #00000038
        :pswitch_38  #00000039
        :pswitch_34  #0000003a
        :pswitch_30  #0000003b
        :pswitch_2c  #0000003c
        :pswitch_28  #0000003d
        :pswitch_24  #0000003e
        :pswitch_20  #0000003f
        :pswitch_1c  #00000040
        :pswitch_19  #00000041
        :pswitch_15  #00000042
        :pswitch_11  #00000043
        :pswitch_d  #00000044
        :pswitch_9  #00000045
        :pswitch_5  #00000046
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x45

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    const-string v12, "com.android.internal.statusbar.IStatusBar"

    const/4 v10, 0x1

    if-lt v14, v10, :cond_13

    const v0, 0xffffff

    if-gt v14, v0, :cond_13

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    packed-switch v14, :pswitch_data_5b6

    move-object/from16 v11, p3

    packed-switch v14, :pswitch_data_5bc

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    move-object/from16 v11, p3

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_26  #0x46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setStatus(ILjava/lang/String;Landroid/os/Bundle;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_42  #0x45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_56  #0x44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_6a  #0x43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_92  #0x42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_b2  #0x41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_c2  #0x40
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/drawable/Icon;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_102  #0x3f
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_116  #0x3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_11f  #0x3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_133  #0x3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_14b  #0x3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestWindowMagnificationConnection(Z)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_15b  #0x3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_16b  #0x39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_183  #0x38
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_18c  #0x37
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_195  #0x36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_1a9  #0x35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_1f0  #0x34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_200  #0x33
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_209  #0x32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(I[I)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_21d  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(I[IZ)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_235  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v0, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/InsetsVisibilities;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_277  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onRecentsAnimationStateChanged(Z)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_287  #0x2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayReady(I)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_297  #0x2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_2ab  #0x2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_2bf  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_2cf  #0x2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_2e7  #0x29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_2fb  #0x28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_5b5

    :pswitch_30b  #0x27
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    move/from16 v28, v10

    move-wide/from16 v10, v25

    move-object/from16 v29, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    goto/16 :goto_5b5

    :pswitch_35f  #0x26
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    goto/16 :goto_5b5

    :pswitch_373  #0x25
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    goto/16 :goto_5b5

    :pswitch_37c  #0x24
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    goto/16 :goto_5b5

    :pswitch_38c  #0x23
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(I)V

    goto/16 :goto_5b5

    :pswitch_39c  #0x22
    move/from16 v28, v10

    move-object/from16 v29, v12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_5b5

    :pswitch_3b0  #0x21
    move/from16 v28, v10

    move-object/from16 v29, v12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_5b5

    :pswitch_3c4  #0x20
    move/from16 v28, v10

    move-object/from16 v29, v12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_5b5

    :pswitch_3d8  #0x1f
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    goto/16 :goto_5b5

    :pswitch_3e8  #0x1e
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    goto/16 :goto_5b5

    :pswitch_3fc  #0x1d
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    goto/16 :goto_5b5

    :pswitch_405  #0x1c
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    goto/16 :goto_5b5

    :pswitch_40e  #0x1b
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    goto/16 :goto_5b5

    :pswitch_417  #0x1a
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    goto/16 :goto_5b5

    :pswitch_427  #0x19
    move/from16 v28, v10

    move-object/from16 v29, v12

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    goto/16 :goto_5b5

    :pswitch_43b  #0x18
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    goto/16 :goto_5b5

    :pswitch_444  #0x17
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    goto/16 :goto_5b5

    :pswitch_454  #0x16
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    goto/16 :goto_5b5

    :pswitch_471  #0x15
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    goto/16 :goto_5b5

    :pswitch_481  #0x14
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    goto/16 :goto_5b5

    :pswitch_491  #0x13
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_5b5

    :pswitch_4a1  #0x12
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    goto/16 :goto_5b5

    :pswitch_4aa  #0x11
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    goto/16 :goto_5b5

    :pswitch_4ba  #0x10
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    goto/16 :goto_5b5

    :pswitch_4c3  #0xf
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    goto/16 :goto_5b5

    :pswitch_4cc  #0xe
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    goto/16 :goto_5b5

    :pswitch_4d5  #0xd
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    goto/16 :goto_5b5

    :pswitch_4de  #0xc
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    goto/16 :goto_5b5

    :pswitch_4f2  #0xb
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    goto/16 :goto_5b5

    :pswitch_502  #0xa
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    goto/16 :goto_5b5

    :pswitch_51a  #0x9
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    goto/16 :goto_5b5

    :pswitch_541  #0x8
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    goto/16 :goto_5b5

    :pswitch_551  #0x7
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->togglePanel()V

    goto :goto_5b5

    :pswitch_559  #0x6
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    goto :goto_5b5

    :pswitch_561  #0x5
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_5b5

    :pswitch_570  #0x4
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    goto :goto_5b5

    :pswitch_578  #0x3
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    goto :goto_5b5

    :pswitch_58f  #0x2
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    goto :goto_5b5

    :pswitch_59e  #0x1
    move/from16 v28, v10

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    nop

    :goto_5b5
    return v28

    :pswitch_data_5b6
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_5bc
    .packed-switch 0x1
        :pswitch_59e  #00000001
        :pswitch_58f  #00000002
        :pswitch_578  #00000003
        :pswitch_570  #00000004
        :pswitch_561  #00000005
        :pswitch_559  #00000006
        :pswitch_551  #00000007
        :pswitch_541  #00000008
        :pswitch_51a  #00000009
        :pswitch_502  #0000000a
        :pswitch_4f2  #0000000b
        :pswitch_4de  #0000000c
        :pswitch_4d5  #0000000d
        :pswitch_4cc  #0000000e
        :pswitch_4c3  #0000000f
        :pswitch_4ba  #00000010
        :pswitch_4aa  #00000011
        :pswitch_4a1  #00000012
        :pswitch_491  #00000013
        :pswitch_481  #00000014
        :pswitch_471  #00000015
        :pswitch_454  #00000016
        :pswitch_444  #00000017
        :pswitch_43b  #00000018
        :pswitch_427  #00000019
        :pswitch_417  #0000001a
        :pswitch_40e  #0000001b
        :pswitch_405  #0000001c
        :pswitch_3fc  #0000001d
        :pswitch_3e8  #0000001e
        :pswitch_3d8  #0000001f
        :pswitch_3c4  #00000020
        :pswitch_3b0  #00000021
        :pswitch_39c  #00000022
        :pswitch_38c  #00000023
        :pswitch_37c  #00000024
        :pswitch_373  #00000025
        :pswitch_35f  #00000026
        :pswitch_30b  #00000027
        :pswitch_2fb  #00000028
        :pswitch_2e7  #00000029
        :pswitch_2cf  #0000002a
        :pswitch_2bf  #0000002b
        :pswitch_2ab  #0000002c
        :pswitch_297  #0000002d
        :pswitch_287  #0000002e
        :pswitch_277  #0000002f
        :pswitch_235  #00000030
        :pswitch_21d  #00000031
        :pswitch_209  #00000032
        :pswitch_200  #00000033
        :pswitch_1f0  #00000034
        :pswitch_1a9  #00000035
        :pswitch_195  #00000036
        :pswitch_18c  #00000037
        :pswitch_183  #00000038
        :pswitch_16b  #00000039
        :pswitch_15b  #0000003a
        :pswitch_14b  #0000003b
        :pswitch_133  #0000003c
        :pswitch_11f  #0000003d
        :pswitch_116  #0000003e
        :pswitch_102  #0000003f
        :pswitch_c2  #00000040
        :pswitch_b2  #00000041
        :pswitch_92  #00000042
        :pswitch_6a  #00000043
        :pswitch_56  #00000044
        :pswitch_42  #00000045
        :pswitch_26  #00000046
    .end packed-switch
.end method
