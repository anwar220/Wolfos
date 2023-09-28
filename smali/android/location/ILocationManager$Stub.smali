# classes2.dex

.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGnssAntennaInfoListener:I = 0x1c

.field static final TRANSACTION_addGnssMeasurementsListener:I = 0x17

.field static final TRANSACTION_addGnssNavigationMessageListener:I = 0x1a

.field static final TRANSACTION_addProviderRequestListener:I = 0x1e

.field static final TRANSACTION_addTestProvider:I = 0x36

.field static final TRANSACTION_flushGnssBatch:I = 0x22

.field static final TRANSACTION_geocoderIsPresent:I = 0xc

.field static final TRANSACTION_getAllProviders:I = 0x25

.field static final TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x3c

.field static final TRANSACTION_getBestProvider:I = 0x27

.field static final TRANSACTION_getCurrentLocation:I = 0x2

.field static final TRANSACTION_getExtraLocationControllerPackage:I = 0x2c

.field static final TRANSACTION_getFromLocation:I = 0xd

.field static final TRANSACTION_getFromLocationName:I = 0xe

.field static final TRANSACTION_getGnssAntennaInfos:I = 0x12

.field static final TRANSACTION_getGnssBatchSize:I = 0x20

.field static final TRANSACTION_getGnssCapabilities:I = 0xf

.field static final TRANSACTION_getGnssHardwareModelName:I = 0x11

.field static final TRANSACTION_getGnssTimeMillis:I = 0x3a

.field static final TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final TRANSACTION_getIgnoreSettingsAllowlist:I = 0x3d

.field static final TRANSACTION_getLastLocation:I = 0x1

.field static final TRANSACTION_getProviderPackages:I = 0x2a

.field static final TRANSACTION_getProviderProperties:I = 0x28

.field static final TRANSACTION_getProviders:I = 0x26

.field static final TRANSACTION_hasProvider:I = 0x24

.field static final TRANSACTION_injectGnssMeasurementCorrections:I = 0x19

.field static final TRANSACTION_injectLocation:I = 0x7

.field static final TRANSACTION_isAdasGnssLocationEnabledForUser:I = 0x32

.field static final TRANSACTION_isAutomotiveGnssSuspended:I = 0x34

.field static final TRANSACTION_isExtraLocationControllerPackageEnabled:I = 0x2e

.field static final TRANSACTION_isLocationEnabledForUser:I = 0x30

.field static final TRANSACTION_isProviderEnabledForUser:I = 0x2f

.field static final TRANSACTION_isProviderPackage:I = 0x29

.field static final TRANSACTION_registerGnssNmeaCallback:I = 0x15

.field static final TRANSACTION_registerGnssStatusCallback:I = 0x13

.field static final TRANSACTION_registerLocationListener:I = 0x3

.field static final TRANSACTION_registerLocationPendingIntent:I = 0x5

.field static final TRANSACTION_removeGeofence:I = 0xb

.field static final TRANSACTION_removeGnssAntennaInfoListener:I = 0x1d

.field static final TRANSACTION_removeGnssMeasurementsListener:I = 0x18

.field static final TRANSACTION_removeGnssNavigationMessageListener:I = 0x1b

.field static final TRANSACTION_removeProviderRequestListener:I = 0x1f

.field static final TRANSACTION_removeTestProvider:I = 0x37

.field static final TRANSACTION_requestGeofence:I = 0xa

.field static final TRANSACTION_requestListenerFlush:I = 0x8

.field static final TRANSACTION_requestPendingIntentFlush:I = 0x9

.field static final TRANSACTION_sendExtraCommand:I = 0x3b

.field static final TRANSACTION_setAdasGnssLocationEnabledForUser:I = 0x33

.field static final TRANSACTION_setAutomotiveGnssSuspended:I = 0x35

.field static final TRANSACTION_setExtraLocationControllerPackage:I = 0x2b

.field static final TRANSACTION_setExtraLocationControllerPackageEnabled:I = 0x2d

.field static final TRANSACTION_setLocationEnabledForUser:I = 0x31

.field static final TRANSACTION_setTestProviderEnabled:I = 0x39

.field static final TRANSACTION_setTestProviderLocation:I = 0x38

.field static final TRANSACTION_startGnssBatch:I = 0x21

.field static final TRANSACTION_stopGnssBatch:I = 0x23

.field static final TRANSACTION_unregisterGnssNmeaCallback:I = 0x16

.field static final TRANSACTION_unregisterGnssStatusCallback:I = 0x14

.field static final TRANSACTION_unregisterLocationListener:I = 0x4

.field static final TRANSACTION_unregisterLocationPendingIntent:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.location.ILocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/location/ILocationManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_bc

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3d
    const-string v0, "getIgnoreSettingsAllowlist"

    return-object v0

    :pswitch_8  #0x3c
    const-string v0, "getBackgroundThrottlingWhitelist"

    return-object v0

    :pswitch_b  #0x3b
    const-string v0, "sendExtraCommand"

    return-object v0

    :pswitch_e  #0x3a
    const-string v0, "getGnssTimeMillis"

    return-object v0

    :pswitch_11  #0x39
    const-string v0, "setTestProviderEnabled"

    return-object v0

    :pswitch_14  #0x38
    const-string v0, "setTestProviderLocation"

    return-object v0

    :pswitch_17  #0x37
    const-string v0, "removeTestProvider"

    return-object v0

    :pswitch_1a  #0x36
    const-string v0, "addTestProvider"

    return-object v0

    :pswitch_1d  #0x35
    const-string v0, "setAutomotiveGnssSuspended"

    return-object v0

    :pswitch_20  #0x34
    const-string v0, "isAutomotiveGnssSuspended"

    return-object v0

    :pswitch_23  #0x33
    const-string v0, "setAdasGnssLocationEnabledForUser"

    return-object v0

    :pswitch_26  #0x32
    const-string v0, "isAdasGnssLocationEnabledForUser"

    return-object v0

    :pswitch_29  #0x31
    const-string v0, "setLocationEnabledForUser"

    return-object v0

    :pswitch_2c  #0x30
    const-string v0, "isLocationEnabledForUser"

    return-object v0

    :pswitch_2f  #0x2f
    const-string v0, "isProviderEnabledForUser"

    return-object v0

    :pswitch_32  #0x2e
    const-string v0, "isExtraLocationControllerPackageEnabled"

    return-object v0

    :pswitch_35  #0x2d
    const-string v0, "setExtraLocationControllerPackageEnabled"

    return-object v0

    :pswitch_38  #0x2c
    const-string v0, "getExtraLocationControllerPackage"

    return-object v0

    :pswitch_3b  #0x2b
    const-string v0, "setExtraLocationControllerPackage"

    return-object v0

    :pswitch_3e  #0x2a
    const-string v0, "getProviderPackages"

    return-object v0

    :pswitch_41  #0x29
    const-string v0, "isProviderPackage"

    return-object v0

    :pswitch_44  #0x28
    const-string v0, "getProviderProperties"

    return-object v0

    :pswitch_47  #0x27
    const-string v0, "getBestProvider"

    return-object v0

    :pswitch_4a  #0x26
    const-string v0, "getProviders"

    return-object v0

    :pswitch_4d  #0x25
    const-string v0, "getAllProviders"

    return-object v0

    :pswitch_50  #0x24
    const-string v0, "hasProvider"

    return-object v0

    :pswitch_53  #0x23
    const-string v0, "stopGnssBatch"

    return-object v0

    :pswitch_56  #0x22
    const-string v0, "flushGnssBatch"

    return-object v0

    :pswitch_59  #0x21
    const-string v0, "startGnssBatch"

    return-object v0

    :pswitch_5c  #0x20
    const-string v0, "getGnssBatchSize"

    return-object v0

    :pswitch_5f  #0x1f
    const-string v0, "removeProviderRequestListener"

    return-object v0

    :pswitch_62  #0x1e
    const-string v0, "addProviderRequestListener"

    return-object v0

    :pswitch_65  #0x1d
    const-string v0, "removeGnssAntennaInfoListener"

    return-object v0

    :pswitch_68  #0x1c
    const-string v0, "addGnssAntennaInfoListener"

    return-object v0

    :pswitch_6b  #0x1b
    const-string v0, "removeGnssNavigationMessageListener"

    return-object v0

    :pswitch_6e  #0x1a
    const-string v0, "addGnssNavigationMessageListener"

    return-object v0

    :pswitch_71  #0x19
    const-string v0, "injectGnssMeasurementCorrections"

    return-object v0

    :pswitch_74  #0x18
    const-string v0, "removeGnssMeasurementsListener"

    return-object v0

    :pswitch_77  #0x17
    const-string v0, "addGnssMeasurementsListener"

    return-object v0

    :pswitch_7a  #0x16
    const-string v0, "unregisterGnssNmeaCallback"

    return-object v0

    :pswitch_7d  #0x15
    const-string v0, "registerGnssNmeaCallback"

    return-object v0

    :pswitch_80  #0x14
    const-string v0, "unregisterGnssStatusCallback"

    return-object v0

    :pswitch_83  #0x13
    const-string v0, "registerGnssStatusCallback"

    return-object v0

    :pswitch_86  #0x12
    const-string v0, "getGnssAntennaInfos"

    return-object v0

    :pswitch_89  #0x11
    const-string v0, "getGnssHardwareModelName"

    return-object v0

    :pswitch_8c  #0x10
    const-string v0, "getGnssYearOfHardware"

    return-object v0

    :pswitch_8f  #0xf
    const-string v0, "getGnssCapabilities"

    return-object v0

    :pswitch_92  #0xe
    const-string v0, "getFromLocationName"

    return-object v0

    :pswitch_95  #0xd
    const-string v0, "getFromLocation"

    return-object v0

    :pswitch_98  #0xc
    const-string v0, "geocoderIsPresent"

    return-object v0

    :pswitch_9b  #0xb
    const-string v0, "removeGeofence"

    return-object v0

    :pswitch_9e  #0xa
    const-string v0, "requestGeofence"

    return-object v0

    :pswitch_a1  #0x9
    const-string v0, "requestPendingIntentFlush"

    return-object v0

    :pswitch_a4  #0x8
    const-string v0, "requestListenerFlush"

    return-object v0

    :pswitch_a7  #0x7
    const-string v0, "injectLocation"

    return-object v0

    :pswitch_aa  #0x6
    const-string v0, "unregisterLocationPendingIntent"

    return-object v0

    :pswitch_ad  #0x5
    const-string v0, "registerLocationPendingIntent"

    return-object v0

    :pswitch_b0  #0x4
    const-string v0, "unregisterLocationListener"

    return-object v0

    :pswitch_b3  #0x3
    const-string v0, "registerLocationListener"

    return-object v0

    :pswitch_b6  #0x2
    const-string v0, "getCurrentLocation"

    return-object v0

    :pswitch_b9  #0x1
    const-string v0, "getLastLocation"

    return-object v0

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_b9  #00000001
        :pswitch_b6  #00000002
        :pswitch_b3  #00000003
        :pswitch_b0  #00000004
        :pswitch_ad  #00000005
        :pswitch_aa  #00000006
        :pswitch_a7  #00000007
        :pswitch_a4  #00000008
        :pswitch_a1  #00000009
        :pswitch_9e  #0000000a
        :pswitch_9b  #0000000b
        :pswitch_98  #0000000c
        :pswitch_95  #0000000d
        :pswitch_92  #0000000e
        :pswitch_8f  #0000000f
        :pswitch_8c  #00000010
        :pswitch_89  #00000011
        :pswitch_86  #00000012
        :pswitch_83  #00000013
        :pswitch_80  #00000014
        :pswitch_7d  #00000015
        :pswitch_7a  #00000016
        :pswitch_77  #00000017
        :pswitch_74  #00000018
        :pswitch_71  #00000019
        :pswitch_6e  #0000001a
        :pswitch_6b  #0000001b
        :pswitch_68  #0000001c
        :pswitch_65  #0000001d
        :pswitch_62  #0000001e
        :pswitch_5f  #0000001f
        :pswitch_5c  #00000020
        :pswitch_59  #00000021
        :pswitch_56  #00000022
        :pswitch_53  #00000023
        :pswitch_50  #00000024
        :pswitch_4d  #00000025
        :pswitch_4a  #00000026
        :pswitch_47  #00000027
        :pswitch_44  #00000028
        :pswitch_41  #00000029
        :pswitch_3e  #0000002a
        :pswitch_3b  #0000002b
        :pswitch_38  #0000002c
        :pswitch_35  #0000002d
        :pswitch_32  #0000002e
        :pswitch_2f  #0000002f
        :pswitch_2c  #00000030
        :pswitch_29  #00000031
        :pswitch_26  #00000032
        :pswitch_23  #00000033
        :pswitch_20  #00000034
        :pswitch_1d  #00000035
        :pswitch_1a  #00000036
        :pswitch_17  #00000037
        :pswitch_14  #00000038
        :pswitch_11  #00000039
        :pswitch_e  #0000003a
        :pswitch_b  #0000003b
        :pswitch_8  #0000003c
        :pswitch_5  #0000003d
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x3c

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/location/ILocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.location.ILocationManager"

    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v14, :pswitch_data_6c8

    packed-switch v14, :pswitch_data_6ce

    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_21  #0x5f4e5446
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_25  #0x3d
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_35  #0x3c
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_45  #0x3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_67  #0x3a
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_77  #0x39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_96  #0x38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_b9  #0x37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_d4  #0x36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/provider/ProviderProperties;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_104  #0x35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setAutomotiveGnssSuspended(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_117  #0x34
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->isAutomotiveGnssSuspended()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_127  #0x33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->setAdasGnssLocationEnabledForUser(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_13e  #0x32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_155  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->setLocationEnabledForUser(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_16c  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->isLocationEnabledForUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_183  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_19e  #0x2e
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->isExtraLocationControllerPackageEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_1ae  #0x2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackageEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_1c1  #0x2c
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_1d1  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_1e4  #0x2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getProviderPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_1fb  #0x29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_21a  #0x28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_231  #0x27
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_250  #0x26
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_26f  #0x25
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_27f  #0x24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->hasProvider(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_296  #0x23
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_2a2  #0x22
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_2ae  #0x21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v7

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_2df  #0x20
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_2ef  #0x1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_306  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_31d  #0x1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_334  #0x1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_357  #0x1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_36e  #0x1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_391  #0x19
    sget-object v0, Landroid/location/GnssMeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssMeasurementCorrections;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_3a8  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_3bf  #0x17
    sget-object v0, Landroid/location/GnssMeasurementRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/location/GnssMeasurementRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_3f3  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_40a  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_42d  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_444  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_467  #0x12
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_477  #0x11
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_487  #0x10
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_497  #0xf
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6c6

    :pswitch_4a7  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/location/GeocoderParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGeocodeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeListener;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move v14, v10

    move/from16 v10, v25

    move-object/from16 v28, v11

    move-object/from16 v11, v26

    move-object v14, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_4f3  #0xd
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/location/GeocoderParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGeocodeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeListener;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v10

    move v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_529  #0xc
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_539  #0xb
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_550  #0xa
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geofence;

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_577  #0x9
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_596  #0x8
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_5b5  #0x7
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->injectLocation(Landroid/location/Location;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_5cc  #0x6
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_5e3  #0x5
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/LocationRequest;

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_617  #0x4
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_6c6

    :pswitch_62e  #0x3
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/location/LocationRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto :goto_6c6

    :pswitch_665  #0x2
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/location/LocationRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationCallback;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    const/4 v5, 0x1

    goto :goto_6c6

    :pswitch_6a0  #0x1
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/location/LastLocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LastLocationRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_6c6
    return v5

    nop

    :pswitch_data_6c8
    .packed-switch 0x5f4e5446
        :pswitch_21  #5f4e5446
    .end packed-switch

    :pswitch_data_6ce
    .packed-switch 0x1
        :pswitch_6a0  #00000001
        :pswitch_665  #00000002
        :pswitch_62e  #00000003
        :pswitch_617  #00000004
        :pswitch_5e3  #00000005
        :pswitch_5cc  #00000006
        :pswitch_5b5  #00000007
        :pswitch_596  #00000008
        :pswitch_577  #00000009
        :pswitch_550  #0000000a
        :pswitch_539  #0000000b
        :pswitch_529  #0000000c
        :pswitch_4f3  #0000000d
        :pswitch_4a7  #0000000e
        :pswitch_497  #0000000f
        :pswitch_487  #00000010
        :pswitch_477  #00000011
        :pswitch_467  #00000012
        :pswitch_444  #00000013
        :pswitch_42d  #00000014
        :pswitch_40a  #00000015
        :pswitch_3f3  #00000016
        :pswitch_3bf  #00000017
        :pswitch_3a8  #00000018
        :pswitch_391  #00000019
        :pswitch_36e  #0000001a
        :pswitch_357  #0000001b
        :pswitch_334  #0000001c
        :pswitch_31d  #0000001d
        :pswitch_306  #0000001e
        :pswitch_2ef  #0000001f
        :pswitch_2df  #00000020
        :pswitch_2ae  #00000021
        :pswitch_2a2  #00000022
        :pswitch_296  #00000023
        :pswitch_27f  #00000024
        :pswitch_26f  #00000025
        :pswitch_250  #00000026
        :pswitch_231  #00000027
        :pswitch_21a  #00000028
        :pswitch_1fb  #00000029
        :pswitch_1e4  #0000002a
        :pswitch_1d1  #0000002b
        :pswitch_1c1  #0000002c
        :pswitch_1ae  #0000002d
        :pswitch_19e  #0000002e
        :pswitch_183  #0000002f
        :pswitch_16c  #00000030
        :pswitch_155  #00000031
        :pswitch_13e  #00000032
        :pswitch_127  #00000033
        :pswitch_117  #00000034
        :pswitch_104  #00000035
        :pswitch_d4  #00000036
        :pswitch_b9  #00000037
        :pswitch_96  #00000038
        :pswitch_77  #00000039
        :pswitch_67  #0000003a
        :pswitch_45  #0000003b
        :pswitch_35  #0000003c
        :pswitch_25  #0000003d
    .end packed-switch
.end method
