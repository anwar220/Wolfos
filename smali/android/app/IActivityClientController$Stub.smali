# classes.dex

.class public abstract Landroid/app/IActivityClientController$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/IActivityClientController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityClientController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activityDestroyed:I = 0x6

.field static final TRANSACTION_activityIdle:I = 0x1

.field static final TRANSACTION_activityLocalRelaunch:I = 0x7

.field static final TRANSACTION_activityPaused:I = 0x4

.field static final TRANSACTION_activityRelaunched:I = 0x8

.field static final TRANSACTION_activityResumed:I = 0x2

.field static final TRANSACTION_activityStopped:I = 0x5

.field static final TRANSACTION_activityTopResumedStateLost:I = 0x3

.field static final TRANSACTION_convertFromTranslucent:I = 0x1d

.field static final TRANSACTION_convertToTranslucent:I = 0x1e

.field static final TRANSACTION_dismissKeyguard:I = 0x35

.field static final TRANSACTION_enterPictureInPictureMode:I = 0x21

.field static final TRANSACTION_finishActivity:I = 0xe

.field static final TRANSACTION_finishActivityAffinity:I = 0xf

.field static final TRANSACTION_finishSubActivity:I = 0x10

.field static final TRANSACTION_getActivityTokenBelow:I = 0x15

.field static final TRANSACTION_getCallingActivity:I = 0x17

.field static final TRANSACTION_getCallingPackage:I = 0x18

.field static final TRANSACTION_getDisplayId:I = 0x13

.field static final TRANSACTION_getLaunchedFromPackage:I = 0x1a

.field static final TRANSACTION_getLaunchedFromUid:I = 0x19

.field static final TRANSACTION_getRequestedOrientation:I = 0x1c

.field static final TRANSACTION_getTaskForActivity:I = 0x14

.field static final TRANSACTION_invalidateHomeTaskSnapshot:I = 0x34

.field static final TRANSACTION_isImmersive:I = 0x1f

.field static final TRANSACTION_isInNewProcess:I = 0x16

.field static final TRANSACTION_isRootVoiceInteraction:I = 0x2a

.field static final TRANSACTION_isTopOfTask:I = 0x11

.field static final TRANSACTION_moveActivityTaskToBack:I = 0xa

.field static final TRANSACTION_navigateUpTo:I = 0xc

.field static final TRANSACTION_onBackPressedOnTaskRoot:I = 0x38

.field static final TRANSACTION_overridePendingTransition:I = 0x31

.field static final TRANSACTION_registerRemoteAnimations:I = 0x36

.field static final TRANSACTION_releaseActivityInstance:I = 0xd

.field static final TRANSACTION_reportActivityFullyDrawn:I = 0x30

.field static final TRANSACTION_reportSizeConfigurations:I = 0x9

.field static final TRANSACTION_requestCompatCameraControl:I = 0x3a

.field static final TRANSACTION_setImmersive:I = 0x20

.field static final TRANSACTION_setInheritShowWhenLocked:I = 0x2e

.field static final TRANSACTION_setPictureInPictureParams:I = 0x22

.field static final TRANSACTION_setRecentsScreenshotEnabled:I = 0x33

.field static final TRANSACTION_setRequestedOrientation:I = 0x1b

.field static final TRANSACTION_setShouldDockBigOverlays:I = 0x23

.field static final TRANSACTION_setShowWhenLocked:I = 0x2d

.field static final TRANSACTION_setTaskDescription:I = 0x28

.field static final TRANSACTION_setTurnScreenOn:I = 0x2f

.field static final TRANSACTION_setVrMode:I = 0x32

.field static final TRANSACTION_shouldUpRecreateTask:I = 0xb

.field static final TRANSACTION_showAssistFromActivity:I = 0x29

.field static final TRANSACTION_showLockTaskEscapeMessage:I = 0x27

.field static final TRANSACTION_splashScreenAttached:I = 0x39

.field static final TRANSACTION_startLocalVoiceInteraction:I = 0x2b

.field static final TRANSACTION_startLockTaskModeByToken:I = 0x25

.field static final TRANSACTION_stopLocalVoiceInteraction:I = 0x2c

.field static final TRANSACTION_stopLockTaskModeByToken:I = 0x26

.field static final TRANSACTION_toggleFreeformWindowingMode:I = 0x24

.field static final TRANSACTION_unregisterRemoteAnimations:I = 0x37

.field static final TRANSACTION_willActivityBeVisible:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IActivityClientController"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityClientController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityClientController;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IActivityClientController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityClientController;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IActivityClientController;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IActivityClientController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityClientController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_d2

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3a
    const-string/jumbo v0, "requestCompatCameraControl"

    return-object v0

    :pswitch_9  #0x39
    const-string/jumbo v0, "splashScreenAttached"

    return-object v0

    :pswitch_d  #0x38
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    :pswitch_11  #0x37
    const-string/jumbo v0, "unregisterRemoteAnimations"

    return-object v0

    :pswitch_15  #0x36
    const-string/jumbo v0, "registerRemoteAnimations"

    return-object v0

    :pswitch_19  #0x35
    const-string v0, "dismissKeyguard"

    return-object v0

    :pswitch_1c  #0x34
    const-string v0, "invalidateHomeTaskSnapshot"

    return-object v0

    :pswitch_1f  #0x33
    const-string/jumbo v0, "setRecentsScreenshotEnabled"

    return-object v0

    :pswitch_23  #0x32
    const-string/jumbo v0, "setVrMode"

    return-object v0

    :pswitch_27  #0x31
    const-string/jumbo v0, "overridePendingTransition"

    return-object v0

    :pswitch_2b  #0x30
    const-string/jumbo v0, "reportActivityFullyDrawn"

    return-object v0

    :pswitch_2f  #0x2f
    const-string/jumbo v0, "setTurnScreenOn"

    return-object v0

    :pswitch_33  #0x2e
    const-string/jumbo v0, "setInheritShowWhenLocked"

    return-object v0

    :pswitch_37  #0x2d
    const-string/jumbo v0, "setShowWhenLocked"

    return-object v0

    :pswitch_3b  #0x2c
    const-string/jumbo v0, "stopLocalVoiceInteraction"

    return-object v0

    :pswitch_3f  #0x2b
    const-string/jumbo v0, "startLocalVoiceInteraction"

    return-object v0

    :pswitch_43  #0x2a
    const-string v0, "isRootVoiceInteraction"

    return-object v0

    :pswitch_46  #0x29
    const-string/jumbo v0, "showAssistFromActivity"

    return-object v0

    :pswitch_4a  #0x28
    const-string/jumbo v0, "setTaskDescription"

    return-object v0

    :pswitch_4e  #0x27
    const-string/jumbo v0, "showLockTaskEscapeMessage"

    return-object v0

    :pswitch_52  #0x26
    const-string/jumbo v0, "stopLockTaskModeByToken"

    return-object v0

    :pswitch_56  #0x25
    const-string/jumbo v0, "startLockTaskModeByToken"

    return-object v0

    :pswitch_5a  #0x24
    const-string/jumbo v0, "toggleFreeformWindowingMode"

    return-object v0

    :pswitch_5e  #0x23
    const-string/jumbo v0, "setShouldDockBigOverlays"

    return-object v0

    :pswitch_62  #0x22
    const-string/jumbo v0, "setPictureInPictureParams"

    return-object v0

    :pswitch_66  #0x21
    const-string v0, "enterPictureInPictureMode"

    return-object v0

    :pswitch_69  #0x20
    const-string/jumbo v0, "setImmersive"

    return-object v0

    :pswitch_6d  #0x1f
    const-string v0, "isImmersive"

    return-object v0

    :pswitch_70  #0x1e
    const-string v0, "convertToTranslucent"

    return-object v0

    :pswitch_73  #0x1d
    const-string v0, "convertFromTranslucent"

    return-object v0

    :pswitch_76  #0x1c
    const-string v0, "getRequestedOrientation"

    return-object v0

    :pswitch_79  #0x1b
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    :pswitch_7d  #0x1a
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    :pswitch_80  #0x19
    const-string v0, "getLaunchedFromUid"

    return-object v0

    :pswitch_83  #0x18
    const-string v0, "getCallingPackage"

    return-object v0

    :pswitch_86  #0x17
    const-string v0, "getCallingActivity"

    return-object v0

    :pswitch_89  #0x16
    const-string v0, "isInNewProcess"

    return-object v0

    :pswitch_8c  #0x15
    const-string v0, "getActivityTokenBelow"

    return-object v0

    :pswitch_8f  #0x14
    const-string v0, "getTaskForActivity"

    return-object v0

    :pswitch_92  #0x13
    const-string v0, "getDisplayId"

    return-object v0

    :pswitch_95  #0x12
    const-string/jumbo v0, "willActivityBeVisible"

    return-object v0

    :pswitch_99  #0x11
    const-string v0, "isTopOfTask"

    return-object v0

    :pswitch_9c  #0x10
    const-string v0, "finishSubActivity"

    return-object v0

    :pswitch_9f  #0xf
    const-string v0, "finishActivityAffinity"

    return-object v0

    :pswitch_a2  #0xe
    const-string v0, "finishActivity"

    return-object v0

    :pswitch_a5  #0xd
    const-string/jumbo v0, "releaseActivityInstance"

    return-object v0

    :pswitch_a9  #0xc
    const-string/jumbo v0, "navigateUpTo"

    return-object v0

    :pswitch_ad  #0xb
    const-string/jumbo v0, "shouldUpRecreateTask"

    return-object v0

    :pswitch_b1  #0xa
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    :pswitch_b5  #0x9
    const-string/jumbo v0, "reportSizeConfigurations"

    return-object v0

    :pswitch_b9  #0x8
    const-string v0, "activityRelaunched"

    return-object v0

    :pswitch_bc  #0x7
    const-string v0, "activityLocalRelaunch"

    return-object v0

    :pswitch_bf  #0x6
    const-string v0, "activityDestroyed"

    return-object v0

    :pswitch_c2  #0x5
    const-string v0, "activityStopped"

    return-object v0

    :pswitch_c5  #0x4
    const-string v0, "activityPaused"

    return-object v0

    :pswitch_c8  #0x3
    const-string v0, "activityTopResumedStateLost"

    return-object v0

    :pswitch_cb  #0x2
    const-string v0, "activityResumed"

    return-object v0

    :pswitch_ce  #0x1
    const-string v0, "activityIdle"

    return-object v0

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_ce  #00000001
        :pswitch_cb  #00000002
        :pswitch_c8  #00000003
        :pswitch_c5  #00000004
        :pswitch_c2  #00000005
        :pswitch_bf  #00000006
        :pswitch_bc  #00000007
        :pswitch_b9  #00000008
        :pswitch_b5  #00000009
        :pswitch_b1  #0000000a
        :pswitch_ad  #0000000b
        :pswitch_a9  #0000000c
        :pswitch_a5  #0000000d
        :pswitch_a2  #0000000e
        :pswitch_9f  #0000000f
        :pswitch_9c  #00000010
        :pswitch_99  #00000011
        :pswitch_95  #00000012
        :pswitch_92  #00000013
        :pswitch_8f  #00000014
        :pswitch_8c  #00000015
        :pswitch_89  #00000016
        :pswitch_86  #00000017
        :pswitch_83  #00000018
        :pswitch_80  #00000019
        :pswitch_7d  #0000001a
        :pswitch_79  #0000001b
        :pswitch_76  #0000001c
        :pswitch_73  #0000001d
        :pswitch_70  #0000001e
        :pswitch_6d  #0000001f
        :pswitch_69  #00000020
        :pswitch_66  #00000021
        :pswitch_62  #00000022
        :pswitch_5e  #00000023
        :pswitch_5a  #00000024
        :pswitch_56  #00000025
        :pswitch_52  #00000026
        :pswitch_4e  #00000027
        :pswitch_4a  #00000028
        :pswitch_46  #00000029
        :pswitch_43  #0000002a
        :pswitch_3f  #0000002b
        :pswitch_3b  #0000002c
        :pswitch_37  #0000002d
        :pswitch_33  #0000002e
        :pswitch_2f  #0000002f
        :pswitch_2b  #00000030
        :pswitch_27  #00000031
        :pswitch_23  #00000032
        :pswitch_1f  #00000033
        :pswitch_1c  #00000034
        :pswitch_19  #00000035
        :pswitch_15  #00000036
        :pswitch_11  #00000037
        :pswitch_d  #00000038
        :pswitch_9  #00000039
        :pswitch_5  #0000003a
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x39

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/IActivityClientController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.app.IActivityClientController"

    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v7, :pswitch_data_4b0

    packed-switch v7, :pswitch_data_4b6

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_24  #0x3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ICompatCameraControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICompatCameraControlCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->requestCompatCameraControl(Landroid/os/IBinder;ZZLandroid/app/ICompatCameraControlCallback;)V

    goto/16 :goto_4af

    :pswitch_40  #0x39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->splashScreenAttached(Landroid/os/IBinder;)V

    goto/16 :goto_4af

    :pswitch_4c  #0x38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IRequestFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IRequestFinishCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    goto/16 :goto_4af

    :pswitch_60  #0x37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_6f  #0x36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_86  #0x35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_a5  #0x34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_b4  #0x33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    goto/16 :goto_4af

    :pswitch_c4  #0x32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4af

    :pswitch_e3  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_10a  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    goto/16 :goto_4af

    :pswitch_11a  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    goto/16 :goto_4af

    :pswitch_12a  #0x2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    goto/16 :goto_4af

    :pswitch_13a  #0x2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    goto/16 :goto_4af

    :pswitch_14a  #0x2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_159  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_170  #0x2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_183  #0x29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_19e  #0x28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_1b5  #0x27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    goto/16 :goto_4af

    :pswitch_1c1  #0x26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    goto/16 :goto_4af

    :pswitch_1cd  #0x25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    goto/16 :goto_4af

    :pswitch_1d9  #0x24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_1e8  #0x23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    goto/16 :goto_4af

    :pswitch_1f8  #0x22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_20f  #0x21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_22a  #0x20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_23d  #0x1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_250  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_26b  #0x1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_27e  #0x1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4af

    :pswitch_291  #0x1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_2a4  #0x1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4af

    :pswitch_2b7  #0x19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4af

    :pswitch_2ca  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4af

    :pswitch_2dd  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_4af

    :pswitch_2f0  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isInNewProcess(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_303  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_4af

    :pswitch_316  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4af

    :pswitch_32d  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getDisplayId(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4af

    :pswitch_340  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_353  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_366  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4af

    :pswitch_37d  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_390  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_3b3  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_3c6  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_3ed  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_404  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4af

    :pswitch_41b  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/window/SizeConfigurationBuckets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SizeConfigurationBuckets;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    goto/16 :goto_4af

    :pswitch_42f  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    goto/16 :goto_4af

    :pswitch_43b  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityLocalRelaunch(Landroid/os/IBinder;)V

    goto :goto_4af

    :pswitch_446  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    goto :goto_4af

    :pswitch_451  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    goto :goto_4af

    :pswitch_474  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityPaused(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4af

    :pswitch_482  #0x3
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityClientController$Stub;->activityTopResumedStateLost()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4af

    :pswitch_489  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->activityResumed(Landroid/os/IBinder;Z)V

    goto :goto_4af

    :pswitch_498  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    nop

    :goto_4af
    return v11

    :pswitch_data_4b0
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_4b6
    .packed-switch 0x1
        :pswitch_498  #00000001
        :pswitch_489  #00000002
        :pswitch_482  #00000003
        :pswitch_474  #00000004
        :pswitch_451  #00000005
        :pswitch_446  #00000006
        :pswitch_43b  #00000007
        :pswitch_42f  #00000008
        :pswitch_41b  #00000009
        :pswitch_404  #0000000a
        :pswitch_3ed  #0000000b
        :pswitch_3c6  #0000000c
        :pswitch_3b3  #0000000d
        :pswitch_390  #0000000e
        :pswitch_37d  #0000000f
        :pswitch_366  #00000010
        :pswitch_353  #00000011
        :pswitch_340  #00000012
        :pswitch_32d  #00000013
        :pswitch_316  #00000014
        :pswitch_303  #00000015
        :pswitch_2f0  #00000016
        :pswitch_2dd  #00000017
        :pswitch_2ca  #00000018
        :pswitch_2b7  #00000019
        :pswitch_2a4  #0000001a
        :pswitch_291  #0000001b
        :pswitch_27e  #0000001c
        :pswitch_26b  #0000001d
        :pswitch_250  #0000001e
        :pswitch_23d  #0000001f
        :pswitch_22a  #00000020
        :pswitch_20f  #00000021
        :pswitch_1f8  #00000022
        :pswitch_1e8  #00000023
        :pswitch_1d9  #00000024
        :pswitch_1cd  #00000025
        :pswitch_1c1  #00000026
        :pswitch_1b5  #00000027
        :pswitch_19e  #00000028
        :pswitch_183  #00000029
        :pswitch_170  #0000002a
        :pswitch_159  #0000002b
        :pswitch_14a  #0000002c
        :pswitch_13a  #0000002d
        :pswitch_12a  #0000002e
        :pswitch_11a  #0000002f
        :pswitch_10a  #00000030
        :pswitch_e3  #00000031
        :pswitch_c4  #00000032
        :pswitch_b4  #00000033
        :pswitch_a5  #00000034
        :pswitch_86  #00000035
        :pswitch_6f  #00000036
        :pswitch_60  #00000037
        :pswitch_4c  #00000038
        :pswitch_40  #00000039
        :pswitch_24  #0000003a
    .end packed-switch
.end method
