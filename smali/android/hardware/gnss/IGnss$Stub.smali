# classes2.dex

.class public abstract Landroid/hardware/gnss/IGnss$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/gnss/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnss$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_deleteAidingData:I = 0x13

.field static final TRANSACTION_getExtensionAGnss:I = 0xa

.field static final TRANSACTION_getExtensionAGnssRil:I = 0xb

.field static final TRANSACTION_getExtensionGnssAntennaInfo:I = 0x15

.field static final TRANSACTION_getExtensionGnssBatching:I = 0x7

.field static final TRANSACTION_getExtensionGnssConfiguration:I = 0x4

.field static final TRANSACTION_getExtensionGnssDebug:I = 0xc

.field static final TRANSACTION_getExtensionGnssGeofence:I = 0x8

.field static final TRANSACTION_getExtensionGnssMeasurement:I = 0x5

.field static final TRANSACTION_getExtensionGnssNavigationMessage:I = 0x9

.field static final TRANSACTION_getExtensionGnssPowerIndication:I = 0x6

.field static final TRANSACTION_getExtensionGnssVisibilityControl:I = 0xd

.field static final TRANSACTION_getExtensionMeasurementCorrections:I = 0x16

.field static final TRANSACTION_getExtensionPsds:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_injectBestLocation:I = 0x12

.field static final TRANSACTION_injectLocation:I = 0x11

.field static final TRANSACTION_injectTime:I = 0x10

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setPositionMode:I = 0x14

.field static final TRANSACTION_start:I = 0xe

.field static final TRANSACTION_startNmea:I = 0x19

.field static final TRANSACTION_startSvStatus:I = 0x17

.field static final TRANSACTION_stop:I = 0xf

.field static final TRANSACTION_stopNmea:I = 0x1a

.field static final TRANSACTION_stopSvStatus:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnss$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnss$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnss;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnss;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnss;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnss$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnss$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
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

    sget-object v10, Landroid/hardware/gnss/IGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    sparse-switch v7, :sswitch_data_17e

    packed-switch v7, :pswitch_data_18c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_3a  #0x1a
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->stopNmea()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_42  #0x19
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->startNmea()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_4a  #0x18
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->stopSvStatus()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_52  #0x17
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->startSvStatus()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_5a  #0x16
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionMeasurementCorrections()Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsInterface;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_17c

    :pswitch_66  #0x15
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssAntennaInfo()Landroid/hardware/gnss/IGnssAntennaInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_17c

    :pswitch_72  #0x14
    sget-object v0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gnss/IGnss$PositionModeOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->setPositionMode(Landroid/hardware/gnss/IGnss$PositionModeOptions;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_85  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->deleteAidingData(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_94  #0x12
    sget-object v0, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gnss/GnssLocation;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/GnssLocation;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_a7  #0x11
    sget-object v0, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gnss/GnssLocation;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->injectLocation(Landroid/hardware/gnss/GnssLocation;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_ba  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v14

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/IGnss$Stub;->injectTime(JJI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_d7  #0xf
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->stop()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_df  #0xe
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->start()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_17c

    :pswitch_e7  #0xd
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssVisibilityControl()Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_17c

    :pswitch_f3  #0xc
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/IGnssDebug;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_17c

    :pswitch_ff  #0xb
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/IAGnssRil;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_17c

    :pswitch_10b  #0xa
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/IAGnss;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_17c

    :pswitch_116  #0x9
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/IGnssNavigationMessageInterface;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_17c

    :pswitch_121  #0x8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssGeofence()Landroid/hardware/gnss/IGnssGeofence;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_17c

    :pswitch_12c  #0x7
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/IGnssBatching;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_17c

    :pswitch_137  #0x6
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssPowerIndication()Landroid/hardware/gnss/IGnssPowerIndication;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_17c

    :pswitch_142  #0x5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/IGnssMeasurementInterface;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_17c

    :pswitch_14d  #0x4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/IGnssConfiguration;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_17c

    :pswitch_158  #0x3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->getExtensionPsds()Landroid/hardware/gnss/IGnssPsds;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_17c

    :pswitch_163  #0x2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnss$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_17c

    :pswitch_16a  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/IGnssCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/gnss/IGnss$Stub;->setCallback(Landroid/hardware/gnss/IGnssCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_17c
    return v11

    nop

    :sswitch_data_17e
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_16a  #00000001
        :pswitch_163  #00000002
        :pswitch_158  #00000003
        :pswitch_14d  #00000004
        :pswitch_142  #00000005
        :pswitch_137  #00000006
        :pswitch_12c  #00000007
        :pswitch_121  #00000008
        :pswitch_116  #00000009
        :pswitch_10b  #0000000a
        :pswitch_ff  #0000000b
        :pswitch_f3  #0000000c
        :pswitch_e7  #0000000d
        :pswitch_df  #0000000e
        :pswitch_d7  #0000000f
        :pswitch_ba  #00000010
        :pswitch_a7  #00000011
        :pswitch_94  #00000012
        :pswitch_85  #00000013
        :pswitch_72  #00000014
        :pswitch_66  #00000015
        :pswitch_5a  #00000016
        :pswitch_52  #00000017
        :pswitch_4a  #00000018
        :pswitch_42  #00000019
        :pswitch_3a  #0000001a
    .end packed-switch
.end method
