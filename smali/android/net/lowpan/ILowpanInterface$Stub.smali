# classes2.dex

.class public abstract Landroid/net/lowpan/ILowpanInterface$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/net/lowpan/ILowpanInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addExternalRoute:I = 0x27

.field static final TRANSACTION_addListener:I = 0x1f

.field static final TRANSACTION_addOnMeshPrefix:I = 0x25

.field static final TRANSACTION_attach:I = 0x16

.field static final TRANSACTION_beginLowPower:I = 0x1c

.field static final TRANSACTION_closeCommissioningSession:I = 0x1a

.field static final TRANSACTION_form:I = 0x15

.field static final TRANSACTION_getDriverVersion:I = 0x3

.field static final TRANSACTION_getExtendedAddress:I = 0xf

.field static final TRANSACTION_getLinkAddresses:I = 0x12

.field static final TRANSACTION_getLinkNetworks:I = 0x13

.field static final TRANSACTION_getLowpanCredential:I = 0x11

.field static final TRANSACTION_getLowpanIdentity:I = 0x10

.field static final TRANSACTION_getMacAddress:I = 0x6

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_getNcpVersion:I = 0x2

.field static final TRANSACTION_getPartitionId:I = 0xe

.field static final TRANSACTION_getRole:I = 0xd

.field static final TRANSACTION_getState:I = 0xc

.field static final TRANSACTION_getSupportedChannels:I = 0x4

.field static final TRANSACTION_getSupportedNetworkTypes:I = 0x5

.field static final TRANSACTION_isCommissioned:I = 0xa

.field static final TRANSACTION_isConnected:I = 0xb

.field static final TRANSACTION_isEnabled:I = 0x7

.field static final TRANSACTION_isUp:I = 0x9

.field static final TRANSACTION_join:I = 0x14

.field static final TRANSACTION_leave:I = 0x17

.field static final TRANSACTION_onHostWake:I = 0x1e

.field static final TRANSACTION_pollForData:I = 0x1d

.field static final TRANSACTION_removeExternalRoute:I = 0x28

.field static final TRANSACTION_removeListener:I = 0x20

.field static final TRANSACTION_removeOnMeshPrefix:I = 0x26

.field static final TRANSACTION_reset:I = 0x18

.field static final TRANSACTION_sendToCommissioner:I = 0x1b

.field static final TRANSACTION_setEnabled:I = 0x8

.field static final TRANSACTION_startCommissioningSession:I = 0x19

.field static final TRANSACTION_startEnergyScan:I = 0x23

.field static final TRANSACTION_startNetScan:I = 0x21

.field static final TRANSACTION_stopEnergyScan:I = 0x24

.field static final TRANSACTION_stopNetScan:I = 0x22


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.lowpan.ILowpanInterface"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.lowpan.ILowpanInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterface;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanInterface;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_7e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x28
    const-string v0, "removeExternalRoute"

    return-object v0

    :pswitch_8  #0x27
    const-string v0, "addExternalRoute"

    return-object v0

    :pswitch_b  #0x26
    const-string v0, "removeOnMeshPrefix"

    return-object v0

    :pswitch_e  #0x25
    const-string v0, "addOnMeshPrefix"

    return-object v0

    :pswitch_11  #0x24
    const-string v0, "stopEnergyScan"

    return-object v0

    :pswitch_14  #0x23
    const-string v0, "startEnergyScan"

    return-object v0

    :pswitch_17  #0x22
    const-string v0, "stopNetScan"

    return-object v0

    :pswitch_1a  #0x21
    const-string v0, "startNetScan"

    return-object v0

    :pswitch_1d  #0x20
    const-string v0, "removeListener"

    return-object v0

    :pswitch_20  #0x1f
    const-string v0, "addListener"

    return-object v0

    :pswitch_23  #0x1e
    const-string v0, "onHostWake"

    return-object v0

    :pswitch_26  #0x1d
    const-string v0, "pollForData"

    return-object v0

    :pswitch_29  #0x1c
    const-string v0, "beginLowPower"

    return-object v0

    :pswitch_2c  #0x1b
    const-string v0, "sendToCommissioner"

    return-object v0

    :pswitch_2f  #0x1a
    const-string v0, "closeCommissioningSession"

    return-object v0

    :pswitch_32  #0x19
    const-string v0, "startCommissioningSession"

    return-object v0

    :pswitch_35  #0x18
    const-string v0, "reset"

    return-object v0

    :pswitch_38  #0x17
    const-string v0, "leave"

    return-object v0

    :pswitch_3b  #0x16
    const-string v0, "attach"

    return-object v0

    :pswitch_3e  #0x15
    const-string v0, "form"

    return-object v0

    :pswitch_41  #0x14
    const-string v0, "join"

    return-object v0

    :pswitch_44  #0x13
    const-string v0, "getLinkNetworks"

    return-object v0

    :pswitch_47  #0x12
    const-string v0, "getLinkAddresses"

    return-object v0

    :pswitch_4a  #0x11
    const-string v0, "getLowpanCredential"

    return-object v0

    :pswitch_4d  #0x10
    const-string v0, "getLowpanIdentity"

    return-object v0

    :pswitch_50  #0xf
    const-string v0, "getExtendedAddress"

    return-object v0

    :pswitch_53  #0xe
    const-string v0, "getPartitionId"

    return-object v0

    :pswitch_56  #0xd
    const-string v0, "getRole"

    return-object v0

    :pswitch_59  #0xc
    const-string v0, "getState"

    return-object v0

    :pswitch_5c  #0xb
    const-string v0, "isConnected"

    return-object v0

    :pswitch_5f  #0xa
    const-string v0, "isCommissioned"

    return-object v0

    :pswitch_62  #0x9
    const-string v0, "isUp"

    return-object v0

    :pswitch_65  #0x8
    const-string v0, "setEnabled"

    return-object v0

    :pswitch_68  #0x7
    const-string v0, "isEnabled"

    return-object v0

    :pswitch_6b  #0x6
    const-string v0, "getMacAddress"

    return-object v0

    :pswitch_6e  #0x5
    const-string v0, "getSupportedNetworkTypes"

    return-object v0

    :pswitch_71  #0x4
    const-string v0, "getSupportedChannels"

    return-object v0

    :pswitch_74  #0x3
    const-string v0, "getDriverVersion"

    return-object v0

    :pswitch_77  #0x2
    const-string v0, "getNcpVersion"

    return-object v0

    :pswitch_7a  #0x1
    const-string v0, "getName"

    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_7a  #00000001
        :pswitch_77  #00000002
        :pswitch_74  #00000003
        :pswitch_71  #00000004
        :pswitch_6e  #00000005
        :pswitch_6b  #00000006
        :pswitch_68  #00000007
        :pswitch_65  #00000008
        :pswitch_62  #00000009
        :pswitch_5f  #0000000a
        :pswitch_5c  #0000000b
        :pswitch_59  #0000000c
        :pswitch_56  #0000000d
        :pswitch_53  #0000000e
        :pswitch_50  #0000000f
        :pswitch_4d  #00000010
        :pswitch_4a  #00000011
        :pswitch_47  #00000012
        :pswitch_44  #00000013
        :pswitch_41  #00000014
        :pswitch_3e  #00000015
        :pswitch_3b  #00000016
        :pswitch_38  #00000017
        :pswitch_35  #00000018
        :pswitch_32  #00000019
        :pswitch_2f  #0000001a
        :pswitch_2c  #0000001b
        :pswitch_29  #0000001c
        :pswitch_26  #0000001d
        :pswitch_23  #0000001e
        :pswitch_20  #0000001f
        :pswitch_1d  #00000020
        :pswitch_1a  #00000021
        :pswitch_17  #00000022
        :pswitch_14  #00000023
        :pswitch_11  #00000024
        :pswitch_e  #00000025
        :pswitch_b  #00000026
        :pswitch_8  #00000027
        :pswitch_5  #00000028
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x27

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/net/lowpan/ILowpanInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.net.lowpan.ILowpanInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_236

    packed-switch p1, :pswitch_data_23c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x28
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeExternalRoute(Landroid/net/IpPrefix;)V

    goto/16 :goto_234

    :pswitch_2c  #0x27
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->addExternalRoute(Landroid/net/IpPrefix;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_43  #0x26
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V

    goto/16 :goto_234

    :pswitch_53  #0x25
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_6a  #0x24
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopEnergyScan()V

    goto/16 :goto_234

    :pswitch_6f  #0x23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanEnergyScanCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_8e  #0x22
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopNetScan()V

    goto/16 :goto_234

    :pswitch_93  #0x21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanNetScanCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_b2  #0x20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    goto/16 :goto_234

    :pswitch_c2  #0x1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_d5  #0x1e
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->onHostWake()V

    goto/16 :goto_234

    :pswitch_da  #0x1d
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->pollForData()V

    goto/16 :goto_234

    :pswitch_df  #0x1c
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->beginLowPower()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_e7  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->sendToCommissioner([B)V

    goto/16 :goto_234

    :pswitch_f3  #0x1a
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->closeCommissioningSession()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_fb  #0x19
    sget-object v2, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_10e  #0x18
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->reset()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_116  #0x17
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->leave()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_11e  #0x16
    sget-object v2, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanProvision;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->attach(Landroid/net/lowpan/LowpanProvision;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_131  #0x15
    sget-object v2, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanProvision;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->form(Landroid/net/lowpan/LowpanProvision;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_144  #0x14
    sget-object v2, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanProvision;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->join(Landroid/net/lowpan/LowpanProvision;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_234

    :pswitch_157  #0x13
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkNetworks()[Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_234

    :pswitch_163  #0x12
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_234

    :pswitch_16f  #0x11
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_234

    :pswitch_17b  #0x10
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_234

    :pswitch_187  #0xf
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getExtendedAddress()[B

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_234

    :pswitch_193  #0xe
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getPartitionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_234

    :pswitch_19f  #0xd
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_234

    :pswitch_1ab  #0xc
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_234

    :pswitch_1b7  #0xb
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isConnected()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_234

    :pswitch_1c3  #0xa
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isCommissioned()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_234

    :pswitch_1ce  #0x9
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isUp()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_234

    :pswitch_1d9  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->setEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_234

    :pswitch_1e7  #0x7
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_234

    :pswitch_1f2  #0x6
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getMacAddress()[B

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_234

    :pswitch_1fd  #0x5
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedNetworkTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_234

    :pswitch_208  #0x4
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_234

    :pswitch_213  #0x3
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getDriverVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_234

    :pswitch_21e  #0x2
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getNcpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_234

    :pswitch_229  #0x1
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    nop

    :goto_234
    return v1

    nop

    :pswitch_data_236
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x1
        :pswitch_229  #00000001
        :pswitch_21e  #00000002
        :pswitch_213  #00000003
        :pswitch_208  #00000004
        :pswitch_1fd  #00000005
        :pswitch_1f2  #00000006
        :pswitch_1e7  #00000007
        :pswitch_1d9  #00000008
        :pswitch_1ce  #00000009
        :pswitch_1c3  #0000000a
        :pswitch_1b7  #0000000b
        :pswitch_1ab  #0000000c
        :pswitch_19f  #0000000d
        :pswitch_193  #0000000e
        :pswitch_187  #0000000f
        :pswitch_17b  #00000010
        :pswitch_16f  #00000011
        :pswitch_163  #00000012
        :pswitch_157  #00000013
        :pswitch_144  #00000014
        :pswitch_131  #00000015
        :pswitch_11e  #00000016
        :pswitch_116  #00000017
        :pswitch_10e  #00000018
        :pswitch_fb  #00000019
        :pswitch_f3  #0000001a
        :pswitch_e7  #0000001b
        :pswitch_df  #0000001c
        :pswitch_da  #0000001d
        :pswitch_d5  #0000001e
        :pswitch_c2  #0000001f
        :pswitch_b2  #00000020
        :pswitch_93  #00000021
        :pswitch_8e  #00000022
        :pswitch_6f  #00000023
        :pswitch_6a  #00000024
        :pswitch_53  #00000025
        :pswitch_43  #00000026
        :pswitch_2c  #00000027
        :pswitch_1c  #00000028
    .end packed-switch
.end method
