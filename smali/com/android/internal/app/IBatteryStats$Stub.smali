# classes4.dex

.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_computeBatteryTimeRemaining:I = 0x15

.field static final TRANSACTION_computeChargeTimeRemaining:I = 0x16

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x4e

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x4f

.field static final TRANSACTION_getBatteryUsageStats:I = 0x11

.field static final TRANSACTION_getBluetoothBatteryStats:I = 0x5a

.field static final TRANSACTION_getCellularBatteryStats:I = 0x56

.field static final TRANSACTION_getGpsBatteryStats:I = 0x58

.field static final TRANSACTION_getMoreMiuiData:I = 0x66

.field static final TRANSACTION_getStatistics:I = 0x12

.field static final TRANSACTION_getStatisticsStream:I = 0x13

.field static final TRANSACTION_getWakeLockStats:I = 0x59

.field static final TRANSACTION_getWifiBatteryStats:I = 0x57

.field static final TRANSACTION_isCharging:I = 0x14

.field static final TRANSACTION_noteBleScanReset:I = 0x54

.field static final TRANSACTION_noteBleScanResults:I = 0x55

.field static final TRANSACTION_noteBleScanStarted:I = 0x52

.field static final TRANSACTION_noteBleScanStopped:I = 0x53

.field static final TRANSACTION_noteBluetoothControllerActivity:I = 0x5d

.field static final TRANSACTION_noteBluetoothOff:I = 0x51

.field static final TRANSACTION_noteBluetoothOn:I = 0x50

.field static final TRANSACTION_noteChangeWakelockFromSource:I = 0x1f

.field static final TRANSACTION_noteConnectivityChanged:I = 0x2e

.field static final TRANSACTION_noteDeviceIdleMode:I = 0x4c

.field static final TRANSACTION_noteEvent:I = 0x17

.field static final TRANSACTION_noteFlashlightOff:I = 0xa

.field static final TRANSACTION_noteFlashlightOn:I = 0x9

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x3d

.field static final TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x43

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x3e

.field static final TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x44

.field static final TRANSACTION_noteGpsChanged:I = 0x27

.field static final TRANSACTION_noteGpsSignalQuality:I = 0x28

.field static final TRANSACTION_noteInteractive:I = 0x2d

.field static final TRANSACTION_noteJobFinish:I = 0x1b

.field static final TRANSACTION_noteJobStart:I = 0x1a

.field static final TRANSACTION_noteLongPartialWakelockFinish:I = 0x23

.field static final TRANSACTION_noteLongPartialWakelockFinishFromSource:I = 0x24

.field static final TRANSACTION_noteLongPartialWakelockStart:I = 0x21

.field static final TRANSACTION_noteLongPartialWakelockStartFromSource:I = 0x22

.field static final TRANSACTION_noteMobileRadioPowerState:I = 0x2f

.field static final TRANSACTION_noteModemControllerActivity:I = 0x5e

.field static final TRANSACTION_noteNetworkInterfaceForTransports:I = 0x4a

.field static final TRANSACTION_noteNetworkStatsEnabled:I = 0x4b

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x33

.field static final TRANSACTION_notePhoneOff:I = 0x31

.field static final TRANSACTION_notePhoneOn:I = 0x30

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x32

.field static final TRANSACTION_notePhoneState:I = 0x34

.field static final TRANSACTION_noteResetAudio:I = 0x8

.field static final TRANSACTION_noteResetCamera:I = 0xd

.field static final TRANSACTION_noteResetFlashlight:I = 0xe

.field static final TRANSACTION_noteResetVideo:I = 0x7

.field static final TRANSACTION_noteScreenBrightness:I = 0x2a

.field static final TRANSACTION_noteScreenState:I = 0x29

.field static final TRANSACTION_noteStartAudio:I = 0x5

.field static final TRANSACTION_noteStartCamera:I = 0xb

.field static final TRANSACTION_noteStartSensor:I = 0x1

.field static final TRANSACTION_noteStartSensorWithPkg:I = 0xf

.field static final TRANSACTION_noteStartVideo:I = 0x3

.field static final TRANSACTION_noteStartWakelock:I = 0x1c

.field static final TRANSACTION_noteStartWakelockFromSource:I = 0x1e

.field static final TRANSACTION_noteStopAudio:I = 0x6

.field static final TRANSACTION_noteStopCamera:I = 0xc

.field static final TRANSACTION_noteStopSensor:I = 0x2

.field static final TRANSACTION_noteStopSensorWithPkg:I = 0x10

.field static final TRANSACTION_noteStopVideo:I = 0x4

.field static final TRANSACTION_noteStopWakelock:I = 0x1d

.field static final TRANSACTION_noteStopWakelockFromSource:I = 0x20

.field static final TRANSACTION_noteSyncFinish:I = 0x19

.field static final TRANSACTION_noteSyncStart:I = 0x18

.field static final TRANSACTION_noteUserActivity:I = 0x2b

.field static final TRANSACTION_noteVibratorOff:I = 0x26

.field static final TRANSACTION_noteVibratorOn:I = 0x25

.field static final TRANSACTION_noteWakeUp:I = 0x2c

.field static final TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x47

.field static final TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x48

.field static final TRANSACTION_noteWifiControllerActivity:I = 0x5f

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x42

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x41

.field static final TRANSACTION_noteWifiOff:I = 0x36

.field static final TRANSACTION_noteWifiOn:I = 0x35

.field static final TRANSACTION_noteWifiRadioPowerState:I = 0x49

.field static final TRANSACTION_noteWifiRssiChanged:I = 0x3c

.field static final TRANSACTION_noteWifiRunning:I = 0x37

.field static final TRANSACTION_noteWifiRunningChanged:I = 0x38

.field static final TRANSACTION_noteWifiScanStarted:I = 0x3f

.field static final TRANSACTION_noteWifiScanStartedFromSource:I = 0x45

.field static final TRANSACTION_noteWifiScanStopped:I = 0x40

.field static final TRANSACTION_noteWifiScanStoppedFromSource:I = 0x46

.field static final TRANSACTION_noteWifiState:I = 0x3a

.field static final TRANSACTION_noteWifiStopped:I = 0x39

.field static final TRANSACTION_noteWifiSupplicantStateChanged:I = 0x3b

.field static final TRANSACTION_resetBattery:I = 0x64

.field static final TRANSACTION_setBatteryLevel:I = 0x62

.field static final TRANSACTION_setBatteryState:I = 0x4d

.field static final TRANSACTION_setChargerAcOnline:I = 0x61

.field static final TRANSACTION_setChargingStateUpdateDelayMillis:I = 0x60

.field static final TRANSACTION_suspendBatteryInput:I = 0x65

.field static final TRANSACTION_takeUidSnapshot:I = 0x5b

.field static final TRANSACTION_takeUidSnapshots:I = 0x5c

.field static final TRANSACTION_unplugBattery:I = 0x63


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IBatteryStats;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_190

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x66
    const-string v0, "getMoreMiuiData"

    return-object v0

    :pswitch_8  #0x65
    const-string/jumbo v0, "suspendBatteryInput"

    return-object v0

    :pswitch_c  #0x64
    const-string/jumbo v0, "resetBattery"

    return-object v0

    :pswitch_10  #0x63
    const-string/jumbo v0, "unplugBattery"

    return-object v0

    :pswitch_14  #0x62
    const-string/jumbo v0, "setBatteryLevel"

    return-object v0

    :pswitch_18  #0x61
    const-string/jumbo v0, "setChargerAcOnline"

    return-object v0

    :pswitch_1c  #0x60
    const-string/jumbo v0, "setChargingStateUpdateDelayMillis"

    return-object v0

    :pswitch_20  #0x5f
    const-string/jumbo v0, "noteWifiControllerActivity"

    return-object v0

    :pswitch_24  #0x5e
    const-string/jumbo v0, "noteModemControllerActivity"

    return-object v0

    :pswitch_28  #0x5d
    const-string/jumbo v0, "noteBluetoothControllerActivity"

    return-object v0

    :pswitch_2c  #0x5c
    const-string/jumbo v0, "takeUidSnapshots"

    return-object v0

    :pswitch_30  #0x5b
    const-string/jumbo v0, "takeUidSnapshot"

    return-object v0

    :pswitch_34  #0x5a
    const-string v0, "getBluetoothBatteryStats"

    return-object v0

    :pswitch_37  #0x59
    const-string v0, "getWakeLockStats"

    return-object v0

    :pswitch_3a  #0x58
    const-string v0, "getGpsBatteryStats"

    return-object v0

    :pswitch_3d  #0x57
    const-string v0, "getWifiBatteryStats"

    return-object v0

    :pswitch_40  #0x56
    const-string v0, "getCellularBatteryStats"

    return-object v0

    :pswitch_43  #0x55
    const-string/jumbo v0, "noteBleScanResults"

    return-object v0

    :pswitch_47  #0x54
    const-string/jumbo v0, "noteBleScanReset"

    return-object v0

    :pswitch_4b  #0x53
    const-string/jumbo v0, "noteBleScanStopped"

    return-object v0

    :pswitch_4f  #0x52
    const-string/jumbo v0, "noteBleScanStarted"

    return-object v0

    :pswitch_53  #0x51
    const-string/jumbo v0, "noteBluetoothOff"

    return-object v0

    :pswitch_57  #0x50
    const-string/jumbo v0, "noteBluetoothOn"

    return-object v0

    :pswitch_5b  #0x4f
    const-string v0, "getAwakeTimePlugged"

    return-object v0

    :pswitch_5e  #0x4e
    const-string v0, "getAwakeTimeBattery"

    return-object v0

    :pswitch_61  #0x4d
    const-string/jumbo v0, "setBatteryState"

    return-object v0

    :pswitch_65  #0x4c
    const-string/jumbo v0, "noteDeviceIdleMode"

    return-object v0

    :pswitch_69  #0x4b
    const-string/jumbo v0, "noteNetworkStatsEnabled"

    return-object v0

    :pswitch_6d  #0x4a
    const-string/jumbo v0, "noteNetworkInterfaceForTransports"

    return-object v0

    :pswitch_71  #0x49
    const-string/jumbo v0, "noteWifiRadioPowerState"

    return-object v0

    :pswitch_75  #0x48
    const-string/jumbo v0, "noteWifiBatchedScanStoppedFromSource"

    return-object v0

    :pswitch_79  #0x47
    const-string/jumbo v0, "noteWifiBatchedScanStartedFromSource"

    return-object v0

    :pswitch_7d  #0x46
    const-string/jumbo v0, "noteWifiScanStoppedFromSource"

    return-object v0

    :pswitch_81  #0x45
    const-string/jumbo v0, "noteWifiScanStartedFromSource"

    return-object v0

    :pswitch_85  #0x44
    const-string/jumbo v0, "noteFullWifiLockReleasedFromSource"

    return-object v0

    :pswitch_89  #0x43
    const-string/jumbo v0, "noteFullWifiLockAcquiredFromSource"

    return-object v0

    :pswitch_8d  #0x42
    const-string/jumbo v0, "noteWifiMulticastDisabled"

    return-object v0

    :pswitch_91  #0x41
    const-string/jumbo v0, "noteWifiMulticastEnabled"

    return-object v0

    :pswitch_95  #0x40
    const-string/jumbo v0, "noteWifiScanStopped"

    return-object v0

    :pswitch_99  #0x3f
    const-string/jumbo v0, "noteWifiScanStarted"

    return-object v0

    :pswitch_9d  #0x3e
    const-string/jumbo v0, "noteFullWifiLockReleased"

    return-object v0

    :pswitch_a1  #0x3d
    const-string/jumbo v0, "noteFullWifiLockAcquired"

    return-object v0

    :pswitch_a5  #0x3c
    const-string/jumbo v0, "noteWifiRssiChanged"

    return-object v0

    :pswitch_a9  #0x3b
    const-string/jumbo v0, "noteWifiSupplicantStateChanged"

    return-object v0

    :pswitch_ad  #0x3a
    const-string/jumbo v0, "noteWifiState"

    return-object v0

    :pswitch_b1  #0x39
    const-string/jumbo v0, "noteWifiStopped"

    return-object v0

    :pswitch_b5  #0x38
    const-string/jumbo v0, "noteWifiRunningChanged"

    return-object v0

    :pswitch_b9  #0x37
    const-string/jumbo v0, "noteWifiRunning"

    return-object v0

    :pswitch_bd  #0x36
    const-string/jumbo v0, "noteWifiOff"

    return-object v0

    :pswitch_c1  #0x35
    const-string/jumbo v0, "noteWifiOn"

    return-object v0

    :pswitch_c5  #0x34
    const-string/jumbo v0, "notePhoneState"

    return-object v0

    :pswitch_c9  #0x33
    const-string/jumbo v0, "notePhoneDataConnectionState"

    return-object v0

    :pswitch_cd  #0x32
    const-string/jumbo v0, "notePhoneSignalStrength"

    return-object v0

    :pswitch_d1  #0x31
    const-string/jumbo v0, "notePhoneOff"

    return-object v0

    :pswitch_d5  #0x30
    const-string/jumbo v0, "notePhoneOn"

    return-object v0

    :pswitch_d9  #0x2f
    const-string/jumbo v0, "noteMobileRadioPowerState"

    return-object v0

    :pswitch_dd  #0x2e
    const-string/jumbo v0, "noteConnectivityChanged"

    return-object v0

    :pswitch_e1  #0x2d
    const-string/jumbo v0, "noteInteractive"

    return-object v0

    :pswitch_e5  #0x2c
    const-string/jumbo v0, "noteWakeUp"

    return-object v0

    :pswitch_e9  #0x2b
    const-string/jumbo v0, "noteUserActivity"

    return-object v0

    :pswitch_ed  #0x2a
    const-string/jumbo v0, "noteScreenBrightness"

    return-object v0

    :pswitch_f1  #0x29
    const-string/jumbo v0, "noteScreenState"

    return-object v0

    :pswitch_f5  #0x28
    const-string/jumbo v0, "noteGpsSignalQuality"

    return-object v0

    :pswitch_f9  #0x27
    const-string/jumbo v0, "noteGpsChanged"

    return-object v0

    :pswitch_fd  #0x26
    const-string/jumbo v0, "noteVibratorOff"

    return-object v0

    :pswitch_101  #0x25
    const-string/jumbo v0, "noteVibratorOn"

    return-object v0

    :pswitch_105  #0x24
    const-string/jumbo v0, "noteLongPartialWakelockFinishFromSource"

    return-object v0

    :pswitch_109  #0x23
    const-string/jumbo v0, "noteLongPartialWakelockFinish"

    return-object v0

    :pswitch_10d  #0x22
    const-string/jumbo v0, "noteLongPartialWakelockStartFromSource"

    return-object v0

    :pswitch_111  #0x21
    const-string/jumbo v0, "noteLongPartialWakelockStart"

    return-object v0

    :pswitch_115  #0x20
    const-string/jumbo v0, "noteStopWakelockFromSource"

    return-object v0

    :pswitch_119  #0x1f
    const-string/jumbo v0, "noteChangeWakelockFromSource"

    return-object v0

    :pswitch_11d  #0x1e
    const-string/jumbo v0, "noteStartWakelockFromSource"

    return-object v0

    :pswitch_121  #0x1d
    const-string/jumbo v0, "noteStopWakelock"

    return-object v0

    :pswitch_125  #0x1c
    const-string/jumbo v0, "noteStartWakelock"

    return-object v0

    :pswitch_129  #0x1b
    const-string/jumbo v0, "noteJobFinish"

    return-object v0

    :pswitch_12d  #0x1a
    const-string/jumbo v0, "noteJobStart"

    return-object v0

    :pswitch_131  #0x19
    const-string/jumbo v0, "noteSyncFinish"

    return-object v0

    :pswitch_135  #0x18
    const-string/jumbo v0, "noteSyncStart"

    return-object v0

    :pswitch_139  #0x17
    const-string/jumbo v0, "noteEvent"

    return-object v0

    :pswitch_13d  #0x16
    const-string v0, "computeChargeTimeRemaining"

    return-object v0

    :pswitch_140  #0x15
    const-string v0, "computeBatteryTimeRemaining"

    return-object v0

    :pswitch_143  #0x14
    const-string v0, "isCharging"

    return-object v0

    :pswitch_146  #0x13
    const-string v0, "getStatisticsStream"

    return-object v0

    :pswitch_149  #0x12
    const-string v0, "getStatistics"

    return-object v0

    :pswitch_14c  #0x11
    const-string v0, "getBatteryUsageStats"

    return-object v0

    :pswitch_14f  #0x10
    const-string/jumbo v0, "noteStopSensorWithPkg"

    return-object v0

    :pswitch_153  #0xf
    const-string/jumbo v0, "noteStartSensorWithPkg"

    return-object v0

    :pswitch_157  #0xe
    const-string/jumbo v0, "noteResetFlashlight"

    return-object v0

    :pswitch_15b  #0xd
    const-string/jumbo v0, "noteResetCamera"

    return-object v0

    :pswitch_15f  #0xc
    const-string/jumbo v0, "noteStopCamera"

    return-object v0

    :pswitch_163  #0xb
    const-string/jumbo v0, "noteStartCamera"

    return-object v0

    :pswitch_167  #0xa
    const-string/jumbo v0, "noteFlashlightOff"

    return-object v0

    :pswitch_16b  #0x9
    const-string/jumbo v0, "noteFlashlightOn"

    return-object v0

    :pswitch_16f  #0x8
    const-string/jumbo v0, "noteResetAudio"

    return-object v0

    :pswitch_173  #0x7
    const-string/jumbo v0, "noteResetVideo"

    return-object v0

    :pswitch_177  #0x6
    const-string/jumbo v0, "noteStopAudio"

    return-object v0

    :pswitch_17b  #0x5
    const-string/jumbo v0, "noteStartAudio"

    return-object v0

    :pswitch_17f  #0x4
    const-string/jumbo v0, "noteStopVideo"

    return-object v0

    :pswitch_183  #0x3
    const-string/jumbo v0, "noteStartVideo"

    return-object v0

    :pswitch_187  #0x2
    const-string/jumbo v0, "noteStopSensor"

    return-object v0

    :pswitch_18b  #0x1
    const-string/jumbo v0, "noteStartSensor"

    return-object v0

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_18b  #00000001
        :pswitch_187  #00000002
        :pswitch_183  #00000003
        :pswitch_17f  #00000004
        :pswitch_17b  #00000005
        :pswitch_177  #00000006
        :pswitch_173  #00000007
        :pswitch_16f  #00000008
        :pswitch_16b  #00000009
        :pswitch_167  #0000000a
        :pswitch_163  #0000000b
        :pswitch_15f  #0000000c
        :pswitch_15b  #0000000d
        :pswitch_157  #0000000e
        :pswitch_153  #0000000f
        :pswitch_14f  #00000010
        :pswitch_14c  #00000011
        :pswitch_149  #00000012
        :pswitch_146  #00000013
        :pswitch_143  #00000014
        :pswitch_140  #00000015
        :pswitch_13d  #00000016
        :pswitch_139  #00000017
        :pswitch_135  #00000018
        :pswitch_131  #00000019
        :pswitch_12d  #0000001a
        :pswitch_129  #0000001b
        :pswitch_125  #0000001c
        :pswitch_121  #0000001d
        :pswitch_11d  #0000001e
        :pswitch_119  #0000001f
        :pswitch_115  #00000020
        :pswitch_111  #00000021
        :pswitch_10d  #00000022
        :pswitch_109  #00000023
        :pswitch_105  #00000024
        :pswitch_101  #00000025
        :pswitch_fd  #00000026
        :pswitch_f9  #00000027
        :pswitch_f5  #00000028
        :pswitch_f1  #00000029
        :pswitch_ed  #0000002a
        :pswitch_e9  #0000002b
        :pswitch_e5  #0000002c
        :pswitch_e1  #0000002d
        :pswitch_dd  #0000002e
        :pswitch_d9  #0000002f
        :pswitch_d5  #00000030
        :pswitch_d1  #00000031
        :pswitch_cd  #00000032
        :pswitch_c9  #00000033
        :pswitch_c5  #00000034
        :pswitch_c1  #00000035
        :pswitch_bd  #00000036
        :pswitch_b9  #00000037
        :pswitch_b5  #00000038
        :pswitch_b1  #00000039
        :pswitch_ad  #0000003a
        :pswitch_a9  #0000003b
        :pswitch_a5  #0000003c
        :pswitch_a1  #0000003d
        :pswitch_9d  #0000003e
        :pswitch_99  #0000003f
        :pswitch_95  #00000040
        :pswitch_91  #00000041
        :pswitch_8d  #00000042
        :pswitch_89  #00000043
        :pswitch_85  #00000044
        :pswitch_81  #00000045
        :pswitch_7d  #00000046
        :pswitch_79  #00000047
        :pswitch_75  #00000048
        :pswitch_71  #00000049
        :pswitch_6d  #0000004a
        :pswitch_69  #0000004b
        :pswitch_65  #0000004c
        :pswitch_61  #0000004d
        :pswitch_5e  #0000004e
        :pswitch_5b  #0000004f
        :pswitch_57  #00000050
        :pswitch_53  #00000051
        :pswitch_4f  #00000052
        :pswitch_4b  #00000053
        :pswitch_47  #00000054
        :pswitch_43  #00000055
        :pswitch_40  #00000056
        :pswitch_3d  #00000057
        :pswitch_3a  #00000058
        :pswitch_37  #00000059
        :pswitch_34  #0000005a
        :pswitch_30  #0000005b
        :pswitch_2c  #0000005c
        :pswitch_28  #0000005d
        :pswitch_24  #0000005e
        :pswitch_20  #0000005f
        :pswitch_1c  #00000060
        :pswitch_18  #00000061
        :pswitch_14  #00000062
        :pswitch_10  #00000063
        :pswitch_c  #00000064
        :pswitch_8  #00000065
        :pswitch_5  #00000066
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x65

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v11, "com.android.internal.app.IBatteryStats"

    const/4 v9, 0x1

    if-lt v13, v9, :cond_15

    const v0, 0xffffff

    if-gt v13, v0, :cond_15

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v13, :pswitch_data_8f2

    packed-switch v13, :pswitch_data_8f8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :pswitch_24  #0x66
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getMoreMiuiData()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_33  #0x65
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_3e  #0x64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_50  #0x63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_62  #0x62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_78  #0x61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_8e  #0x60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_a4  #0x5f
    sget-object v0, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_b7  #0x5e
    sget-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_ca  #0x5d
    sget-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_dd  #0x5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_f3  #0x5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_109  #0x5a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_118  #0x59
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_127  #0x58
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_136  #0x57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_145  #0x56
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_154  #0x55
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults(Landroid/os/WorkSource;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_16e  #0x54
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_179  #0x53
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_193  #0x52
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_1ad  #0x51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_1c7  #0x50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_1e1  #0x4f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_1f0  #0x4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_1ff  #0x4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move v13, v9

    move-wide/from16 v9, v24

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIIIIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_245  #0x4c
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_25f  #0x4b
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_26a  #0x4a
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_280  #0x49
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_29a  #0x48
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_2b0  #0x47
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_2ca  #0x46
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_2e0  #0x45
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_2f6  #0x44
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_30c  #0x43
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_322  #0x42
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_334  #0x41
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_346  #0x40
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_358  #0x3f
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_36a  #0x3e
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_37c  #0x3d
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_38e  #0x3c
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_3a0  #0x3b
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_3b6  #0x3a
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_3cc  #0x39
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_3e2  #0x38
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_400  #0x37
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_416  #0x36
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_421  #0x35
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_42c  #0x34
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_43e  #0x33
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_45c  #0x32
    move v13, v9

    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_472  #0x31
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_47d  #0x30
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_488  #0x2f
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_4a2  #0x2e
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_4b8  #0x2d
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_4ca  #0x2c
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_4e0  #0x2b
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_4f6  #0x2a
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_508  #0x29
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_51a  #0x28
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_52c  #0x27
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_54a  #0x26
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_55c  #0x25
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_572  #0x24
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_590  #0x23
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_5aa  #0x22
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_5c8  #0x21
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_5e2  #0x20
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v11

    goto/16 :goto_8f0

    :pswitch_610  #0x1f
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    move-object/from16 v27, v11

    move/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_66e  #0x1e
    move v13, v9

    move-object/from16 v27, v11

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_6a2  #0x1d
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_6cb  #0x1c
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_6fa  #0x1b
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_714  #0x1a
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_72a  #0x19
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_740  #0x18
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_756  #0x17
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_770  #0x16
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_8f0

    :pswitch_77f  #0x15
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_8f0

    :pswitch_78e  #0x14
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->isCharging()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_8f0

    :pswitch_79d  #0x13
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatisticsStream(Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_8f0

    :pswitch_7b3  #0x12
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_8f0

    :pswitch_7c2  #0x11
    move v13, v9

    move-object/from16 v27, v11

    sget-object v0, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_8f0

    :pswitch_7da  #0x10
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensorWithPkg(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_7f4  #0xf
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensorWithPkg(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_80e  #0xe
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_819  #0xd
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_824  #0xc
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_836  #0xb
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_848  #0xa
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_85a  #0x9
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_86c  #0x8
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_877  #0x7
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8f0

    :pswitch_882  #0x6
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f0

    :pswitch_893  #0x5
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f0

    :pswitch_8a4  #0x4
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f0

    :pswitch_8b5  #0x3
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f0

    :pswitch_8c6  #0x2
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f0

    :pswitch_8db  #0x1
    move v13, v9

    move-object/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_8f0
    return v13

    nop

    :pswitch_data_8f2
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_8f8
    .packed-switch 0x1
        :pswitch_8db  #00000001
        :pswitch_8c6  #00000002
        :pswitch_8b5  #00000003
        :pswitch_8a4  #00000004
        :pswitch_893  #00000005
        :pswitch_882  #00000006
        :pswitch_877  #00000007
        :pswitch_86c  #00000008
        :pswitch_85a  #00000009
        :pswitch_848  #0000000a
        :pswitch_836  #0000000b
        :pswitch_824  #0000000c
        :pswitch_819  #0000000d
        :pswitch_80e  #0000000e
        :pswitch_7f4  #0000000f
        :pswitch_7da  #00000010
        :pswitch_7c2  #00000011
        :pswitch_7b3  #00000012
        :pswitch_79d  #00000013
        :pswitch_78e  #00000014
        :pswitch_77f  #00000015
        :pswitch_770  #00000016
        :pswitch_756  #00000017
        :pswitch_740  #00000018
        :pswitch_72a  #00000019
        :pswitch_714  #0000001a
        :pswitch_6fa  #0000001b
        :pswitch_6cb  #0000001c
        :pswitch_6a2  #0000001d
        :pswitch_66e  #0000001e
        :pswitch_610  #0000001f
        :pswitch_5e2  #00000020
        :pswitch_5c8  #00000021
        :pswitch_5aa  #00000022
        :pswitch_590  #00000023
        :pswitch_572  #00000024
        :pswitch_55c  #00000025
        :pswitch_54a  #00000026
        :pswitch_52c  #00000027
        :pswitch_51a  #00000028
        :pswitch_508  #00000029
        :pswitch_4f6  #0000002a
        :pswitch_4e0  #0000002b
        :pswitch_4ca  #0000002c
        :pswitch_4b8  #0000002d
        :pswitch_4a2  #0000002e
        :pswitch_488  #0000002f
        :pswitch_47d  #00000030
        :pswitch_472  #00000031
        :pswitch_45c  #00000032
        :pswitch_43e  #00000033
        :pswitch_42c  #00000034
        :pswitch_421  #00000035
        :pswitch_416  #00000036
        :pswitch_400  #00000037
        :pswitch_3e2  #00000038
        :pswitch_3cc  #00000039
        :pswitch_3b6  #0000003a
        :pswitch_3a0  #0000003b
        :pswitch_38e  #0000003c
        :pswitch_37c  #0000003d
        :pswitch_36a  #0000003e
        :pswitch_358  #0000003f
        :pswitch_346  #00000040
        :pswitch_334  #00000041
        :pswitch_322  #00000042
        :pswitch_30c  #00000043
        :pswitch_2f6  #00000044
        :pswitch_2e0  #00000045
        :pswitch_2ca  #00000046
        :pswitch_2b0  #00000047
        :pswitch_29a  #00000048
        :pswitch_280  #00000049
        :pswitch_26a  #0000004a
        :pswitch_25f  #0000004b
        :pswitch_245  #0000004c
        :pswitch_1ff  #0000004d
        :pswitch_1f0  #0000004e
        :pswitch_1e1  #0000004f
        :pswitch_1c7  #00000050
        :pswitch_1ad  #00000051
        :pswitch_193  #00000052
        :pswitch_179  #00000053
        :pswitch_16e  #00000054
        :pswitch_154  #00000055
        :pswitch_145  #00000056
        :pswitch_136  #00000057
        :pswitch_127  #00000058
        :pswitch_118  #00000059
        :pswitch_109  #0000005a
        :pswitch_f3  #0000005b
        :pswitch_dd  #0000005c
        :pswitch_ca  #0000005d
        :pswitch_b7  #0000005e
        :pswitch_a4  #0000005f
        :pswitch_8e  #00000060
        :pswitch_78  #00000061
        :pswitch_62  #00000062
        :pswitch_50  #00000063
        :pswitch_3e  #00000064
        :pswitch_33  #00000065
        :pswitch_24  #00000066
    .end packed-switch
.end method
