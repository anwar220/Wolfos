# classes3.dex

.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_acquireWakeLockAsync:I = 0x2c

.field static final TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final TRANSACTION_boostScreenBrightness:I = 0x2b

.field static final TRANSACTION_crash:I = 0x27

.field static final TRANSACTION_forceLowPowerStandbyActive:I = 0x23

.field static final TRANSACTION_forceSuspend:I = 0x37

.field static final TRANSACTION_getBatteryDischargePrediction:I = 0x1b

.field static final TRANSACTION_getBrightnessConstraint:I = 0xf

.field static final TRANSACTION_getFullPowerSavePolicy:I = 0x14

.field static final TRANSACTION_getLastShutdownReason:I = 0x28

.field static final TRANSACTION_getLastSleepReason:I = 0x29

.field static final TRANSACTION_getPowerSaveModeTrigger:I = 0x19

.field static final TRANSACTION_getPowerSaveState:I = 0x12

.field static final TRANSACTION_goToSleep:I = 0xd

.field static final TRANSACTION_isAmbientDisplayAvailable:I = 0x32

.field static final TRANSACTION_isAmbientDisplaySuppressed:I = 0x35

.field static final TRANSACTION_isAmbientDisplaySuppressedForToken:I = 0x34

.field static final TRANSACTION_isAmbientDisplaySuppressedForTokenByApp:I = 0x36

.field static final TRANSACTION_isBatteryDischargePredictionPersonalized:I = 0x1c

.field static final TRANSACTION_isDeviceIdleMode:I = 0x1d

.field static final TRANSACTION_isInteractive:I = 0x10

.field static final TRANSACTION_isLightDeviceIdleMode:I = 0x1e

.field static final TRANSACTION_isLowPowerStandbyEnabled:I = 0x20

.field static final TRANSACTION_isLowPowerStandbySupported:I = 0x1f

.field static final TRANSACTION_isPowerSaveMode:I = 0x11

.field static final TRANSACTION_isScreenBrightnessBoosted:I = 0x2f

.field static final TRANSACTION_isWakeLockLevelSupported:I = 0xa

.field static final TRANSACTION_nap:I = 0xe

.field static final TRANSACTION_reboot:I = 0x24

.field static final TRANSACTION_rebootSafeMode:I = 0x25

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_releaseWakeLockAsync:I = 0x2d

.field static final TRANSACTION_setAdaptivePowerSaveEnabled:I = 0x18

.field static final TRANSACTION_setAdaptivePowerSavePolicy:I = 0x17

.field static final TRANSACTION_setAttentionLight:I = 0x30

.field static final TRANSACTION_setBatteryDischargePrediction:I = 0x1a

.field static final TRANSACTION_setDozeAfterScreenOff:I = 0x31

.field static final TRANSACTION_setDynamicPowerSaveHint:I = 0x16

.field static final TRANSACTION_setFullPowerSavePolicy:I = 0x15

.field static final TRANSACTION_setLowPowerStandbyActiveDuringMaintenance:I = 0x22

.field static final TRANSACTION_setLowPowerStandbyEnabled:I = 0x21

.field static final TRANSACTION_setPowerBoost:I = 0x5

.field static final TRANSACTION_setPowerMode:I = 0x6

.field static final TRANSACTION_setPowerModeChecked:I = 0x7

.field static final TRANSACTION_setPowerSaveModeEnabled:I = 0x13

.field static final TRANSACTION_setStayOnSetting:I = 0x2a

.field static final TRANSACTION_shutdown:I = 0x26

.field static final TRANSACTION_suppressAmbientDisplay:I = 0x33

.field static final TRANSACTION_updateWakeLockCallback:I = 0x9

.field static final TRANSACTION_updateWakeLockUids:I = 0x4

.field static final TRANSACTION_updateWakeLockUidsAsync:I = 0x2e

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x8

.field static final TRANSACTION_userActivity:I = 0xb

.field static final TRANSACTION_wakeUp:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.IPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/IPowerManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_d2

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x37
    const-string v0, "forceSuspend"

    return-object v0

    :pswitch_8  #0x36
    const-string/jumbo v0, "isAmbientDisplaySuppressedForTokenByApp"

    return-object v0

    :pswitch_c  #0x35
    const-string/jumbo v0, "isAmbientDisplaySuppressed"

    return-object v0

    :pswitch_10  #0x34
    const-string/jumbo v0, "isAmbientDisplaySuppressedForToken"

    return-object v0

    :pswitch_14  #0x33
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    :pswitch_18  #0x32
    const-string/jumbo v0, "isAmbientDisplayAvailable"

    return-object v0

    :pswitch_1c  #0x31
    const-string/jumbo v0, "setDozeAfterScreenOff"

    return-object v0

    :pswitch_20  #0x30
    const-string/jumbo v0, "setAttentionLight"

    return-object v0

    :pswitch_24  #0x2f
    const-string/jumbo v0, "isScreenBrightnessBoosted"

    return-object v0

    :pswitch_28  #0x2e
    const-string/jumbo v0, "updateWakeLockUidsAsync"

    return-object v0

    :pswitch_2c  #0x2d
    const-string/jumbo v0, "releaseWakeLockAsync"

    return-object v0

    :pswitch_30  #0x2c
    const-string v0, "acquireWakeLockAsync"

    return-object v0

    :pswitch_33  #0x2b
    const-string v0, "boostScreenBrightness"

    return-object v0

    :pswitch_36  #0x2a
    const-string/jumbo v0, "setStayOnSetting"

    return-object v0

    :pswitch_3a  #0x29
    const-string v0, "getLastSleepReason"

    return-object v0

    :pswitch_3d  #0x28
    const-string v0, "getLastShutdownReason"

    return-object v0

    :pswitch_40  #0x27
    const-string v0, "crash"

    return-object v0

    :pswitch_43  #0x26
    const-string/jumbo v0, "shutdown"

    return-object v0

    :pswitch_47  #0x25
    const-string/jumbo v0, "rebootSafeMode"

    return-object v0

    :pswitch_4b  #0x24
    const-string/jumbo v0, "reboot"

    return-object v0

    :pswitch_4f  #0x23
    const-string v0, "forceLowPowerStandbyActive"

    return-object v0

    :pswitch_52  #0x22
    const-string/jumbo v0, "setLowPowerStandbyActiveDuringMaintenance"

    return-object v0

    :pswitch_56  #0x21
    const-string/jumbo v0, "setLowPowerStandbyEnabled"

    return-object v0

    :pswitch_5a  #0x20
    const-string/jumbo v0, "isLowPowerStandbyEnabled"

    return-object v0

    :pswitch_5e  #0x1f
    const-string/jumbo v0, "isLowPowerStandbySupported"

    return-object v0

    :pswitch_62  #0x1e
    const-string/jumbo v0, "isLightDeviceIdleMode"

    return-object v0

    :pswitch_66  #0x1d
    const-string/jumbo v0, "isDeviceIdleMode"

    return-object v0

    :pswitch_6a  #0x1c
    const-string/jumbo v0, "isBatteryDischargePredictionPersonalized"

    return-object v0

    :pswitch_6e  #0x1b
    const-string v0, "getBatteryDischargePrediction"

    return-object v0

    :pswitch_71  #0x1a
    const-string/jumbo v0, "setBatteryDischargePrediction"

    return-object v0

    :pswitch_75  #0x19
    const-string v0, "getPowerSaveModeTrigger"

    return-object v0

    :pswitch_78  #0x18
    const-string/jumbo v0, "setAdaptivePowerSaveEnabled"

    return-object v0

    :pswitch_7c  #0x17
    const-string/jumbo v0, "setAdaptivePowerSavePolicy"

    return-object v0

    :pswitch_80  #0x16
    const-string/jumbo v0, "setDynamicPowerSaveHint"

    return-object v0

    :pswitch_84  #0x15
    const-string/jumbo v0, "setFullPowerSavePolicy"

    return-object v0

    :pswitch_88  #0x14
    const-string v0, "getFullPowerSavePolicy"

    return-object v0

    :pswitch_8b  #0x13
    const-string/jumbo v0, "setPowerSaveModeEnabled"

    return-object v0

    :pswitch_8f  #0x12
    const-string v0, "getPowerSaveState"

    return-object v0

    :pswitch_92  #0x11
    const-string/jumbo v0, "isPowerSaveMode"

    return-object v0

    :pswitch_96  #0x10
    const-string/jumbo v0, "isInteractive"

    return-object v0

    :pswitch_9a  #0xf
    const-string v0, "getBrightnessConstraint"

    return-object v0

    :pswitch_9d  #0xe
    const-string/jumbo v0, "nap"

    return-object v0

    :pswitch_a1  #0xd
    const-string v0, "goToSleep"

    return-object v0

    :pswitch_a4  #0xc
    const-string/jumbo v0, "wakeUp"

    return-object v0

    :pswitch_a8  #0xb
    const-string/jumbo v0, "userActivity"

    return-object v0

    :pswitch_ac  #0xa
    const-string/jumbo v0, "isWakeLockLevelSupported"

    return-object v0

    :pswitch_b0  #0x9
    const-string/jumbo v0, "updateWakeLockCallback"

    return-object v0

    :pswitch_b4  #0x8
    const-string/jumbo v0, "updateWakeLockWorkSource"

    return-object v0

    :pswitch_b8  #0x7
    const-string/jumbo v0, "setPowerModeChecked"

    return-object v0

    :pswitch_bc  #0x6
    const-string/jumbo v0, "setPowerMode"

    return-object v0

    :pswitch_c0  #0x5
    const-string/jumbo v0, "setPowerBoost"

    return-object v0

    :pswitch_c4  #0x4
    const-string/jumbo v0, "updateWakeLockUids"

    return-object v0

    :pswitch_c8  #0x3
    const-string/jumbo v0, "releaseWakeLock"

    return-object v0

    :pswitch_cc  #0x2
    const-string v0, "acquireWakeLockWithUid"

    return-object v0

    :pswitch_cf  #0x1
    const-string v0, "acquireWakeLock"

    return-object v0

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_cf  #00000001
        :pswitch_cc  #00000002
        :pswitch_c8  #00000003
        :pswitch_c4  #00000004
        :pswitch_c0  #00000005
        :pswitch_bc  #00000006
        :pswitch_b8  #00000007
        :pswitch_b4  #00000008
        :pswitch_b0  #00000009
        :pswitch_ac  #0000000a
        :pswitch_a8  #0000000b
        :pswitch_a4  #0000000c
        :pswitch_a1  #0000000d
        :pswitch_9d  #0000000e
        :pswitch_9a  #0000000f
        :pswitch_96  #00000010
        :pswitch_92  #00000011
        :pswitch_8f  #00000012
        :pswitch_8b  #00000013
        :pswitch_88  #00000014
        :pswitch_84  #00000015
        :pswitch_80  #00000016
        :pswitch_7c  #00000017
        :pswitch_78  #00000018
        :pswitch_75  #00000019
        :pswitch_71  #0000001a
        :pswitch_6e  #0000001b
        :pswitch_6a  #0000001c
        :pswitch_66  #0000001d
        :pswitch_62  #0000001e
        :pswitch_5e  #0000001f
        :pswitch_5a  #00000020
        :pswitch_56  #00000021
        :pswitch_52  #00000022
        :pswitch_4f  #00000023
        :pswitch_4b  #00000024
        :pswitch_47  #00000025
        :pswitch_43  #00000026
        :pswitch_40  #00000027
        :pswitch_3d  #00000028
        :pswitch_3a  #00000029
        :pswitch_36  #0000002a
        :pswitch_33  #0000002b
        :pswitch_30  #0000002c
        :pswitch_2c  #0000002d
        :pswitch_28  #0000002e
        :pswitch_24  #0000002f
        :pswitch_20  #00000030
        :pswitch_1c  #00000031
        :pswitch_18  #00000032
        :pswitch_14  #00000033
        :pswitch_10  #00000034
        :pswitch_c  #00000035
        :pswitch_8  #00000036
        :pswitch_5  #00000037
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x36

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.os.IPowerManager"

    const/4 v14, 0x1

    if-lt v10, v14, :cond_15

    const v0, 0xffffff

    if-gt v10, v0, :cond_15

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v10, :pswitch_data_462

    packed-switch v10, :pswitch_data_468

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_24  #0x37
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->forceSuspend()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_30  #0x36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_47  #0x35
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressed()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_53  #0x34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_66  #0x33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->suppressAmbientDisplay(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_79  #0x32
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplayAvailable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_85  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setDozeAfterScreenOff(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_94  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_a7  #0x2f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_b3  #0x2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V

    goto/16 :goto_460

    :pswitch_c3  #0x2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->releaseWakeLockAsync(Landroid/os/IBinder;I)V

    goto/16 :goto_460

    :pswitch_d3  #0x2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    goto/16 :goto_460

    :pswitch_104  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_113  #0x2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_122  #0x29
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getLastSleepReason()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_460

    :pswitch_12e  #0x28
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getLastShutdownReason()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_460

    :pswitch_13a  #0x27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_149  #0x26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->shutdown(ZLjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_160  #0x25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->rebootSafeMode(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_173  #0x24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_18a  #0x23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->forceLowPowerStandbyActive(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_199  #0x22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyActiveDuringMaintenance(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_1a8  #0x21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_1b7  #0x20
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbyEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_1c3  #0x1f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbySupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_1cf  #0x1e
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLightDeviceIdleMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_1db  #0x1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_1e7  #0x1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isBatteryDischargePredictionPersonalized()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_1f3  #0x1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_460

    :pswitch_1ff  #0x1a
    sget-object v0, Landroid/os/ParcelDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelDuration;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_216  #0x19
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getPowerSaveModeTrigger()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_460

    :pswitch_222  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_235  #0x17
    sget-object v0, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatterySaverPolicyConfig;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_24c  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setDynamicPowerSaveHint(ZI)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_263  #0x15
    sget-object v0, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatterySaverPolicyConfig;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_27a  #0x14
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_460

    :pswitch_286  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setPowerSaveModeEnabled(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_299  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_460

    :pswitch_2ac  #0x11
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_2b8  #0x10
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_2c4  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getBrightnessConstraint(I)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_460

    :pswitch_2d7  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->nap(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_2e6  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_2fd  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v8

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_31f  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->userActivity(IJII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_341  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_354  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_36b  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_386  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerModeChecked(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_460

    :pswitch_39d  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerMode(IZ)V

    goto/16 :goto_460

    :pswitch_3ad  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerBoost(II)V

    goto/16 :goto_460

    :pswitch_3bd  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_3d0  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_460

    :pswitch_3e3  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_460

    :pswitch_41b  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_460
    return v14

    nop

    :pswitch_data_462
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_468
    .packed-switch 0x1
        :pswitch_41b  #00000001
        :pswitch_3e3  #00000002
        :pswitch_3d0  #00000003
        :pswitch_3bd  #00000004
        :pswitch_3ad  #00000005
        :pswitch_39d  #00000006
        :pswitch_386  #00000007
        :pswitch_36b  #00000008
        :pswitch_354  #00000009
        :pswitch_341  #0000000a
        :pswitch_31f  #0000000b
        :pswitch_2fd  #0000000c
        :pswitch_2e6  #0000000d
        :pswitch_2d7  #0000000e
        :pswitch_2c4  #0000000f
        :pswitch_2b8  #00000010
        :pswitch_2ac  #00000011
        :pswitch_299  #00000012
        :pswitch_286  #00000013
        :pswitch_27a  #00000014
        :pswitch_263  #00000015
        :pswitch_24c  #00000016
        :pswitch_235  #00000017
        :pswitch_222  #00000018
        :pswitch_216  #00000019
        :pswitch_1ff  #0000001a
        :pswitch_1f3  #0000001b
        :pswitch_1e7  #0000001c
        :pswitch_1db  #0000001d
        :pswitch_1cf  #0000001e
        :pswitch_1c3  #0000001f
        :pswitch_1b7  #00000020
        :pswitch_1a8  #00000021
        :pswitch_199  #00000022
        :pswitch_18a  #00000023
        :pswitch_173  #00000024
        :pswitch_160  #00000025
        :pswitch_149  #00000026
        :pswitch_13a  #00000027
        :pswitch_12e  #00000028
        :pswitch_122  #00000029
        :pswitch_113  #0000002a
        :pswitch_104  #0000002b
        :pswitch_d3  #0000002c
        :pswitch_c3  #0000002d
        :pswitch_b3  #0000002e
        :pswitch_a7  #0000002f
        :pswitch_94  #00000030
        :pswitch_85  #00000031
        :pswitch_79  #00000032
        :pswitch_66  #00000033
        :pswitch_53  #00000034
        :pswitch_47  #00000035
        :pswitch_30  #00000036
        :pswitch_24  #00000037
    .end packed-switch
.end method
