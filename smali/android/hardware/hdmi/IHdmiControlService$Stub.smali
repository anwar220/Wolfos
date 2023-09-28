# classes2.dex

.class public abstract Landroid/hardware/hdmi/IHdmiControlService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/hdmi/IHdmiControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiControlService"

.field static final TRANSACTION_addCecSettingChangeListener:I = 0x32

.field static final TRANSACTION_addDeviceEventListener:I = 0xd

.field static final TRANSACTION_addHdmiCecVolumeControlFeatureListener:I = 0x9

.field static final TRANSACTION_addHdmiControlStatusChangeListener:I = 0x7

.field static final TRANSACTION_addHdmiMhlVendorCommandListener:I = 0x2c

.field static final TRANSACTION_addHotplugEventListener:I = 0xb

.field static final TRANSACTION_addSystemAudioModeChangeListener:I = 0x17

.field static final TRANSACTION_addVendorCommandListener:I = 0x24

.field static final TRANSACTION_askRemoteDeviceToBecomeActiveSource:I = 0x22

.field static final TRANSACTION_canChangeSystemAudioMode:I = 0x13

.field static final TRANSACTION_clearTimerRecording:I = 0x2a

.field static final TRANSACTION_deviceSelect:I = 0xe

.field static final TRANSACTION_getActiveSource:I = 0x2

.field static final TRANSACTION_getAllowedCecSettingIntValues:I = 0x36

.field static final TRANSACTION_getAllowedCecSettingStringValues:I = 0x35

.field static final TRANSACTION_getCecSettingIntValue:I = 0x39

.field static final TRANSACTION_getCecSettingStringValue:I = 0x37

.field static final TRANSACTION_getDeviceList:I = 0x1f

.field static final TRANSACTION_getInputDevices:I = 0x1e

.field static final TRANSACTION_getMessageHistorySize:I = 0x31

.field static final TRANSACTION_getPhysicalAddress:I = 0x15

.field static final TRANSACTION_getPortInfo:I = 0x12

.field static final TRANSACTION_getSupportedTypes:I = 0x1

.field static final TRANSACTION_getSystemAudioMode:I = 0x14

.field static final TRANSACTION_getUserCecSettings:I = 0x34

.field static final TRANSACTION_oneTouchPlay:I = 0x3

.field static final TRANSACTION_portSelect:I = 0xf

.field static final TRANSACTION_powerOffRemoteDevice:I = 0x20

.field static final TRANSACTION_powerOnRemoteDevice:I = 0x21

.field static final TRANSACTION_queryDisplayStatus:I = 0x6

.field static final TRANSACTION_removeCecSettingChangeListener:I = 0x33

.field static final TRANSACTION_removeHdmiCecVolumeControlFeatureListener:I = 0xa

.field static final TRANSACTION_removeHdmiControlStatusChangeListener:I = 0x8

.field static final TRANSACTION_removeHotplugEventListener:I = 0xc

.field static final TRANSACTION_removeSystemAudioModeChangeListener:I = 0x18

.field static final TRANSACTION_reportAudioStatus:I = 0x2e

.field static final TRANSACTION_sendKeyEvent:I = 0x10

.field static final TRANSACTION_sendMhlVendorCommand:I = 0x2b

.field static final TRANSACTION_sendStandby:I = 0x25

.field static final TRANSACTION_sendVendorCommand:I = 0x23

.field static final TRANSACTION_sendVolumeKeyEvent:I = 0x11

.field static final TRANSACTION_setArcMode:I = 0x19

.field static final TRANSACTION_setCecSettingIntValue:I = 0x3a

.field static final TRANSACTION_setCecSettingStringValue:I = 0x38

.field static final TRANSACTION_setHdmiRecordListener:I = 0x26

.field static final TRANSACTION_setInputChangeListener:I = 0x1d

.field static final TRANSACTION_setMessageHistorySize:I = 0x30

.field static final TRANSACTION_setProhibitMode:I = 0x1a

.field static final TRANSACTION_setStandbyMode:I = 0x2d

.field static final TRANSACTION_setSystemAudioMode:I = 0x16

.field static final TRANSACTION_setSystemAudioModeOnForAudioOnlySource:I = 0x2f

.field static final TRANSACTION_setSystemAudioMute:I = 0x1c

.field static final TRANSACTION_setSystemAudioVolume:I = 0x1b

.field static final TRANSACTION_shouldHandleTvPowerKey:I = 0x5

.field static final TRANSACTION_startOneTouchRecord:I = 0x27

.field static final TRANSACTION_startTimerRecording:I = 0x29

.field static final TRANSACTION_stopOneTouchRecord:I = 0x28

.field static final TRANSACTION_toggleAndFollowTvPower:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/hdmi/IHdmiControlService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_b4

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3a
    const-string v0, "setCecSettingIntValue"

    return-object v0

    :pswitch_8  #0x39
    const-string v0, "getCecSettingIntValue"

    return-object v0

    :pswitch_b  #0x38
    const-string v0, "setCecSettingStringValue"

    return-object v0

    :pswitch_e  #0x37
    const-string v0, "getCecSettingStringValue"

    return-object v0

    :pswitch_11  #0x36
    const-string v0, "getAllowedCecSettingIntValues"

    return-object v0

    :pswitch_14  #0x35
    const-string v0, "getAllowedCecSettingStringValues"

    return-object v0

    :pswitch_17  #0x34
    const-string v0, "getUserCecSettings"

    return-object v0

    :pswitch_1a  #0x33
    const-string v0, "removeCecSettingChangeListener"

    return-object v0

    :pswitch_1d  #0x32
    const-string v0, "addCecSettingChangeListener"

    return-object v0

    :pswitch_20  #0x31
    const-string v0, "getMessageHistorySize"

    return-object v0

    :pswitch_23  #0x30
    const-string v0, "setMessageHistorySize"

    return-object v0

    :pswitch_26  #0x2f
    const-string v0, "setSystemAudioModeOnForAudioOnlySource"

    return-object v0

    :pswitch_29  #0x2e
    const-string v0, "reportAudioStatus"

    return-object v0

    :pswitch_2c  #0x2d
    const-string v0, "setStandbyMode"

    return-object v0

    :pswitch_2f  #0x2c
    const-string v0, "addHdmiMhlVendorCommandListener"

    return-object v0

    :pswitch_32  #0x2b
    const-string v0, "sendMhlVendorCommand"

    return-object v0

    :pswitch_35  #0x2a
    const-string v0, "clearTimerRecording"

    return-object v0

    :pswitch_38  #0x29
    const-string v0, "startTimerRecording"

    return-object v0

    :pswitch_3b  #0x28
    const-string v0, "stopOneTouchRecord"

    return-object v0

    :pswitch_3e  #0x27
    const-string v0, "startOneTouchRecord"

    return-object v0

    :pswitch_41  #0x26
    const-string v0, "setHdmiRecordListener"

    return-object v0

    :pswitch_44  #0x25
    const-string v0, "sendStandby"

    return-object v0

    :pswitch_47  #0x24
    const-string v0, "addVendorCommandListener"

    return-object v0

    :pswitch_4a  #0x23
    const-string v0, "sendVendorCommand"

    return-object v0

    :pswitch_4d  #0x22
    const-string v0, "askRemoteDeviceToBecomeActiveSource"

    return-object v0

    :pswitch_50  #0x21
    const-string v0, "powerOnRemoteDevice"

    return-object v0

    :pswitch_53  #0x20
    const-string v0, "powerOffRemoteDevice"

    return-object v0

    :pswitch_56  #0x1f
    const-string v0, "getDeviceList"

    return-object v0

    :pswitch_59  #0x1e
    const-string v0, "getInputDevices"

    return-object v0

    :pswitch_5c  #0x1d
    const-string v0, "setInputChangeListener"

    return-object v0

    :pswitch_5f  #0x1c
    const-string v0, "setSystemAudioMute"

    return-object v0

    :pswitch_62  #0x1b
    const-string v0, "setSystemAudioVolume"

    return-object v0

    :pswitch_65  #0x1a
    const-string v0, "setProhibitMode"

    return-object v0

    :pswitch_68  #0x19
    const-string v0, "setArcMode"

    return-object v0

    :pswitch_6b  #0x18
    const-string v0, "removeSystemAudioModeChangeListener"

    return-object v0

    :pswitch_6e  #0x17
    const-string v0, "addSystemAudioModeChangeListener"

    return-object v0

    :pswitch_71  #0x16
    const-string v0, "setSystemAudioMode"

    return-object v0

    :pswitch_74  #0x15
    const-string v0, "getPhysicalAddress"

    return-object v0

    :pswitch_77  #0x14
    const-string v0, "getSystemAudioMode"

    return-object v0

    :pswitch_7a  #0x13
    const-string v0, "canChangeSystemAudioMode"

    return-object v0

    :pswitch_7d  #0x12
    const-string v0, "getPortInfo"

    return-object v0

    :pswitch_80  #0x11
    const-string v0, "sendVolumeKeyEvent"

    return-object v0

    :pswitch_83  #0x10
    const-string v0, "sendKeyEvent"

    return-object v0

    :pswitch_86  #0xf
    const-string v0, "portSelect"

    return-object v0

    :pswitch_89  #0xe
    const-string v0, "deviceSelect"

    return-object v0

    :pswitch_8c  #0xd
    const-string v0, "addDeviceEventListener"

    return-object v0

    :pswitch_8f  #0xc
    const-string v0, "removeHotplugEventListener"

    return-object v0

    :pswitch_92  #0xb
    const-string v0, "addHotplugEventListener"

    return-object v0

    :pswitch_95  #0xa
    const-string v0, "removeHdmiCecVolumeControlFeatureListener"

    return-object v0

    :pswitch_98  #0x9
    const-string v0, "addHdmiCecVolumeControlFeatureListener"

    return-object v0

    :pswitch_9b  #0x8
    const-string v0, "removeHdmiControlStatusChangeListener"

    return-object v0

    :pswitch_9e  #0x7
    const-string v0, "addHdmiControlStatusChangeListener"

    return-object v0

    :pswitch_a1  #0x6
    const-string v0, "queryDisplayStatus"

    return-object v0

    :pswitch_a4  #0x5
    const-string v0, "shouldHandleTvPowerKey"

    return-object v0

    :pswitch_a7  #0x4
    const-string v0, "toggleAndFollowTvPower"

    return-object v0

    :pswitch_aa  #0x3
    const-string v0, "oneTouchPlay"

    return-object v0

    :pswitch_ad  #0x2
    const-string v0, "getActiveSource"

    return-object v0

    :pswitch_b0  #0x1
    const-string v0, "getSupportedTypes"

    return-object v0

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_b0  #00000001
        :pswitch_ad  #00000002
        :pswitch_aa  #00000003
        :pswitch_a7  #00000004
        :pswitch_a4  #00000005
        :pswitch_a1  #00000006
        :pswitch_9e  #00000007
        :pswitch_9b  #00000008
        :pswitch_98  #00000009
        :pswitch_95  #0000000a
        :pswitch_92  #0000000b
        :pswitch_8f  #0000000c
        :pswitch_8c  #0000000d
        :pswitch_89  #0000000e
        :pswitch_86  #0000000f
        :pswitch_83  #00000010
        :pswitch_80  #00000011
        :pswitch_7d  #00000012
        :pswitch_7a  #00000013
        :pswitch_77  #00000014
        :pswitch_74  #00000015
        :pswitch_71  #00000016
        :pswitch_6e  #00000017
        :pswitch_6b  #00000018
        :pswitch_68  #00000019
        :pswitch_65  #0000001a
        :pswitch_62  #0000001b
        :pswitch_5f  #0000001c
        :pswitch_5c  #0000001d
        :pswitch_59  #0000001e
        :pswitch_56  #0000001f
        :pswitch_53  #00000020
        :pswitch_50  #00000021
        :pswitch_4d  #00000022
        :pswitch_4a  #00000023
        :pswitch_47  #00000024
        :pswitch_44  #00000025
        :pswitch_41  #00000026
        :pswitch_3e  #00000027
        :pswitch_3b  #00000028
        :pswitch_38  #00000029
        :pswitch_35  #0000002a
        :pswitch_32  #0000002b
        :pswitch_2f  #0000002c
        :pswitch_2c  #0000002d
        :pswitch_29  #0000002e
        :pswitch_26  #0000002f
        :pswitch_23  #00000030
        :pswitch_20  #00000031
        :pswitch_1d  #00000032
        :pswitch_1a  #00000033
        :pswitch_17  #00000034
        :pswitch_14  #00000035
        :pswitch_11  #00000036
        :pswitch_e  #00000037
        :pswitch_b  #00000038
        :pswitch_8  #00000039
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

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_42c

    packed-switch p1, :pswitch_data_432

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_2f  #0x39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_42b

    :pswitch_42  #0x38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_55  #0x37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_42b

    :pswitch_68  #0x36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getAllowedCecSettingIntValues(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_42b

    :pswitch_7b  #0x35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_42b

    :pswitch_8e  #0x34
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getUserCecSettings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_42b

    :pswitch_9a  #0x33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_b1  #0x32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_c8  #0x31
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getMessageHistorySize()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_42b

    :pswitch_d4  #0x30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setMessageHistorySize(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_42b

    :pswitch_e7  #0x2f
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioModeOnForAudioOnlySource()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_ef  #0x2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->reportAudioStatus(IIIZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_10a  #0x2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setStandbyMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_119  #0x2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_12c  #0x2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendMhlVendorCommand(III[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_147  #0x2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->clearTimerRecording(II[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_15e  #0x29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startTimerRecording(II[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_175  #0x28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->stopOneTouchRecord(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_184  #0x27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startOneTouchRecord(I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_197  #0x26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_1aa  #0x25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendStandby(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_1bd  #0x24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_1d4  #0x23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_1ef  #0x22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->askRemoteDeviceToBecomeActiveSource(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_1fe  #0x21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->powerOnRemoteDevice(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_211  #0x20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->powerOffRemoteDevice(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_224  #0x1f
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_42b

    :pswitch_230  #0x1e
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getInputDevices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_42b

    :pswitch_23c  #0x1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_24f  #0x1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMute(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_25e  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioVolume(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_275  #0x1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setProhibitMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_284  #0x19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_293  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_2a6  #0x17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_2b9  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_2d0  #0x15
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_42b

    :pswitch_2dc  #0x14
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSystemAudioMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_42b

    :pswitch_2e8  #0x13
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->canChangeSystemAudioMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_42b

    :pswitch_2f4  #0x12
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPortInfo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_42b

    :pswitch_300  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVolumeKeyEvent(IIZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_317  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendKeyEvent(IIZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_32e  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_345  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_35c  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_36f  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_382  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_395  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_3a8  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_42b

    :pswitch_3bb  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_42b

    :pswitch_3cd  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_42b

    :pswitch_3df  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_42b

    :pswitch_3f1  #0x5
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->shouldHandleTvPowerKey()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_42b

    :pswitch_3fc  #0x4
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->toggleAndFollowTvPower()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_42b

    :pswitch_403  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_42b

    :pswitch_415  #0x2
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_42b

    :pswitch_420  #0x1
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSupportedTypes()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    nop

    :goto_42b
    return v1

    :pswitch_data_42c
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_432
    .packed-switch 0x1
        :pswitch_420  #00000001
        :pswitch_415  #00000002
        :pswitch_403  #00000003
        :pswitch_3fc  #00000004
        :pswitch_3f1  #00000005
        :pswitch_3df  #00000006
        :pswitch_3cd  #00000007
        :pswitch_3bb  #00000008
        :pswitch_3a8  #00000009
        :pswitch_395  #0000000a
        :pswitch_382  #0000000b
        :pswitch_36f  #0000000c
        :pswitch_35c  #0000000d
        :pswitch_345  #0000000e
        :pswitch_32e  #0000000f
        :pswitch_317  #00000010
        :pswitch_300  #00000011
        :pswitch_2f4  #00000012
        :pswitch_2e8  #00000013
        :pswitch_2dc  #00000014
        :pswitch_2d0  #00000015
        :pswitch_2b9  #00000016
        :pswitch_2a6  #00000017
        :pswitch_293  #00000018
        :pswitch_284  #00000019
        :pswitch_275  #0000001a
        :pswitch_25e  #0000001b
        :pswitch_24f  #0000001c
        :pswitch_23c  #0000001d
        :pswitch_230  #0000001e
        :pswitch_224  #0000001f
        :pswitch_211  #00000020
        :pswitch_1fe  #00000021
        :pswitch_1ef  #00000022
        :pswitch_1d4  #00000023
        :pswitch_1bd  #00000024
        :pswitch_1aa  #00000025
        :pswitch_197  #00000026
        :pswitch_184  #00000027
        :pswitch_175  #00000028
        :pswitch_15e  #00000029
        :pswitch_147  #0000002a
        :pswitch_12c  #0000002b
        :pswitch_119  #0000002c
        :pswitch_10a  #0000002d
        :pswitch_ef  #0000002e
        :pswitch_e7  #0000002f
        :pswitch_d4  #00000030
        :pswitch_c8  #00000031
        :pswitch_b1  #00000032
        :pswitch_9a  #00000033
        :pswitch_8e  #00000034
        :pswitch_7b  #00000035
        :pswitch_68  #00000036
        :pswitch_55  #00000037
        :pswitch_42  #00000038
        :pswitch_2f  #00000039
        :pswitch_1c  #0000003a
    .end packed-switch
.end method
