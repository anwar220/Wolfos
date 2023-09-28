# classes3.dex

.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x34

.field static final TRANSACTION_addRoute:I = 0xd

.field static final TRANSACTION_allowProtect:I = 0x32

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_closeSocketForAurogon:I = 0x39

.field static final TRANSACTION_denyProtect:I = 0x33

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableNat:I = 0x1d

.field static final TRANSACTION_enableIpv6:I = 0xb

.field static final TRANSACTION_enableNat:I = 0x1c

.field static final TRANSACTION_getDnsForwarders:I = 0x19

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x10

.field static final TRANSACTION_getMiuiNetworkManager:I = 0x38

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x21

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x2b

.field static final TRANSACTION_isFirewallEnabled:I = 0x2d

.field static final TRANSACTION_isNetworkRestricted:I = 0x37

.field static final TRANSACTION_isTetheringStarted:I = 0x15

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x18

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_registerTetheringStatsProvider:I = 0x1e

.field static final TRANSACTION_removeInterfaceAlert:I = 0x25

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x35

.field static final TRANSACTION_removeInterfaceQuota:I = 0x23

.field static final TRANSACTION_removeRoute:I = 0xe

.field static final TRANSACTION_removeRoutesFromLocalNetwork:I = 0x36

.field static final TRANSACTION_setDataSaverModeEnabled:I = 0x29

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x31

.field static final TRANSACTION_setFirewallEnabled:I = 0x2c

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x2e

.field static final TRANSACTION_setFirewallUidRule:I = 0x2f

.field static final TRANSACTION_setFirewallUidRules:I = 0x30

.field static final TRANSACTION_setGlobalAlert:I = 0x26

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0xc

.field static final TRANSACTION_setInterfaceAlert:I = 0x24

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x22

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x11

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x2a

.field static final TRANSACTION_setUidOnMeteredNetworkAllowlist:I = 0x28

.field static final TRANSACTION_setUidOnMeteredNetworkDenylist:I = 0x27

.field static final TRANSACTION_shutdown:I = 0xf

.field static final TRANSACTION_startInterfaceForwarding:I = 0x1a

.field static final TRANSACTION_startTethering:I = 0x12

.field static final TRANSACTION_startTetheringWithConfiguration:I = 0x13

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x1b

.field static final TRANSACTION_stopTethering:I = 0x14

.field static final TRANSACTION_tetherInterface:I = 0x16

.field static final TRANSACTION_tetherLimitReached:I = 0x20

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_unregisterTetheringStatsProvider:I = 0x1f

.field static final TRANSACTION_untetherInterface:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/INetworkManagementService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_da

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x39
    const-string v0, "closeSocketForAurogon"

    return-object v0

    :pswitch_8  #0x38
    const-string v0, "getMiuiNetworkManager"

    return-object v0

    :pswitch_b  #0x37
    const-string/jumbo v0, "isNetworkRestricted"

    return-object v0

    :pswitch_f  #0x36
    const-string/jumbo v0, "removeRoutesFromLocalNetwork"

    return-object v0

    :pswitch_13  #0x35
    const-string/jumbo v0, "removeInterfaceFromLocalNetwork"

    return-object v0

    :pswitch_17  #0x34
    const-string v0, "addInterfaceToLocalNetwork"

    return-object v0

    :pswitch_1a  #0x33
    const-string v0, "denyProtect"

    return-object v0

    :pswitch_1d  #0x32
    const-string v0, "allowProtect"

    return-object v0

    :pswitch_20  #0x31
    const-string/jumbo v0, "setFirewallChainEnabled"

    return-object v0

    :pswitch_24  #0x30
    const-string/jumbo v0, "setFirewallUidRules"

    return-object v0

    :pswitch_28  #0x2f
    const-string/jumbo v0, "setFirewallUidRule"

    return-object v0

    :pswitch_2c  #0x2e
    const-string/jumbo v0, "setFirewallInterfaceRule"

    return-object v0

    :pswitch_30  #0x2d
    const-string/jumbo v0, "isFirewallEnabled"

    return-object v0

    :pswitch_34  #0x2c
    const-string/jumbo v0, "setFirewallEnabled"

    return-object v0

    :pswitch_38  #0x2b
    const-string/jumbo v0, "isBandwidthControlEnabled"

    return-object v0

    :pswitch_3c  #0x2a
    const-string/jumbo v0, "setUidCleartextNetworkPolicy"

    return-object v0

    :pswitch_40  #0x29
    const-string/jumbo v0, "setDataSaverModeEnabled"

    return-object v0

    :pswitch_44  #0x28
    const-string/jumbo v0, "setUidOnMeteredNetworkAllowlist"

    return-object v0

    :pswitch_48  #0x27
    const-string/jumbo v0, "setUidOnMeteredNetworkDenylist"

    return-object v0

    :pswitch_4c  #0x26
    const-string/jumbo v0, "setGlobalAlert"

    return-object v0

    :pswitch_50  #0x25
    const-string/jumbo v0, "removeInterfaceAlert"

    return-object v0

    :pswitch_54  #0x24
    const-string/jumbo v0, "setInterfaceAlert"

    return-object v0

    :pswitch_58  #0x23
    const-string/jumbo v0, "removeInterfaceQuota"

    return-object v0

    :pswitch_5c  #0x22
    const-string/jumbo v0, "setInterfaceQuota"

    return-object v0

    :pswitch_60  #0x21
    const-string v0, "getNetworkStatsTethering"

    return-object v0

    :pswitch_63  #0x20
    const-string/jumbo v0, "tetherLimitReached"

    return-object v0

    :pswitch_67  #0x1f
    const-string/jumbo v0, "unregisterTetheringStatsProvider"

    return-object v0

    :pswitch_6b  #0x1e
    const-string/jumbo v0, "registerTetheringStatsProvider"

    return-object v0

    :pswitch_6f  #0x1d
    const-string v0, "disableNat"

    return-object v0

    :pswitch_72  #0x1c
    const-string v0, "enableNat"

    return-object v0

    :pswitch_75  #0x1b
    const-string/jumbo v0, "stopInterfaceForwarding"

    return-object v0

    :pswitch_79  #0x1a
    const-string/jumbo v0, "startInterfaceForwarding"

    return-object v0

    :pswitch_7d  #0x19
    const-string v0, "getDnsForwarders"

    return-object v0

    :pswitch_80  #0x18
    const-string/jumbo v0, "listTetheredInterfaces"

    return-object v0

    :pswitch_84  #0x17
    const-string/jumbo v0, "untetherInterface"

    return-object v0

    :pswitch_88  #0x16
    const-string/jumbo v0, "tetherInterface"

    return-object v0

    :pswitch_8c  #0x15
    const-string/jumbo v0, "isTetheringStarted"

    return-object v0

    :pswitch_90  #0x14
    const-string/jumbo v0, "stopTethering"

    return-object v0

    :pswitch_94  #0x13
    const-string/jumbo v0, "startTetheringWithConfiguration"

    return-object v0

    :pswitch_98  #0x12
    const-string/jumbo v0, "startTethering"

    return-object v0

    :pswitch_9c  #0x11
    const-string/jumbo v0, "setIpForwardingEnabled"

    return-object v0

    :pswitch_a0  #0x10
    const-string v0, "getIpForwardingEnabled"

    return-object v0

    :pswitch_a3  #0xf
    const-string/jumbo v0, "shutdown"

    return-object v0

    :pswitch_a7  #0xe
    const-string/jumbo v0, "removeRoute"

    return-object v0

    :pswitch_ab  #0xd
    const-string v0, "addRoute"

    return-object v0

    :pswitch_ae  #0xc
    const-string/jumbo v0, "setIPv6AddrGenMode"

    return-object v0

    :pswitch_b2  #0xb
    const-string v0, "enableIpv6"

    return-object v0

    :pswitch_b5  #0xa
    const-string v0, "disableIpv6"

    return-object v0

    :pswitch_b8  #0x9
    const-string/jumbo v0, "setInterfaceIpv6PrivacyExtensions"

    return-object v0

    :pswitch_bc  #0x8
    const-string/jumbo v0, "setInterfaceUp"

    return-object v0

    :pswitch_c0  #0x7
    const-string/jumbo v0, "setInterfaceDown"

    return-object v0

    :pswitch_c4  #0x6
    const-string v0, "clearInterfaceAddresses"

    return-object v0

    :pswitch_c7  #0x5
    const-string/jumbo v0, "setInterfaceConfig"

    return-object v0

    :pswitch_cb  #0x4
    const-string v0, "getInterfaceConfig"

    return-object v0

    :pswitch_ce  #0x3
    const-string/jumbo v0, "listInterfaces"

    return-object v0

    :pswitch_d2  #0x2
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    :pswitch_d6  #0x1
    const-string/jumbo v0, "registerObserver"

    return-object v0

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_d6  #00000001
        :pswitch_d2  #00000002
        :pswitch_ce  #00000003
        :pswitch_cb  #00000004
        :pswitch_c7  #00000005
        :pswitch_c4  #00000006
        :pswitch_c0  #00000007
        :pswitch_bc  #00000008
        :pswitch_b8  #00000009
        :pswitch_b5  #0000000a
        :pswitch_b2  #0000000b
        :pswitch_ae  #0000000c
        :pswitch_ab  #0000000d
        :pswitch_a7  #0000000e
        :pswitch_a3  #0000000f
        :pswitch_a0  #00000010
        :pswitch_9c  #00000011
        :pswitch_98  #00000012
        :pswitch_94  #00000013
        :pswitch_90  #00000014
        :pswitch_8c  #00000015
        :pswitch_88  #00000016
        :pswitch_84  #00000017
        :pswitch_80  #00000018
        :pswitch_7d  #00000019
        :pswitch_79  #0000001a
        :pswitch_75  #0000001b
        :pswitch_72  #0000001c
        :pswitch_6f  #0000001d
        :pswitch_6b  #0000001e
        :pswitch_67  #0000001f
        :pswitch_63  #00000020
        :pswitch_60  #00000021
        :pswitch_5c  #00000022
        :pswitch_58  #00000023
        :pswitch_54  #00000024
        :pswitch_50  #00000025
        :pswitch_4c  #00000026
        :pswitch_48  #00000027
        :pswitch_44  #00000028
        :pswitch_40  #00000029
        :pswitch_3c  #0000002a
        :pswitch_38  #0000002b
        :pswitch_34  #0000002c
        :pswitch_30  #0000002d
        :pswitch_2c  #0000002e
        :pswitch_28  #0000002f
        :pswitch_24  #00000030
        :pswitch_20  #00000031
        :pswitch_1d  #00000032
        :pswitch_1a  #00000033
        :pswitch_17  #00000034
        :pswitch_13  #00000035
        :pswitch_f  #00000036
        :pswitch_b  #00000037
        :pswitch_8  #00000038
        :pswitch_5  #00000039
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x38

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.os.INetworkManagementService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_3dc

    packed-switch p1, :pswitch_data_3e2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x39
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->closeSocketForAurogon([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_2b  #0x38
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getMiuiNetworkManager()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_3da

    :pswitch_37  #0x37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3da

    :pswitch_4a  #0x36
    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3da

    :pswitch_5f  #0x35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_6e  #0x34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_83  #0x33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_92  #0x32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_a1  #0x31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_b4  #0x30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_cb  #0x2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_e2  #0x2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_f5  #0x2d
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3da

    :pswitch_101  #0x2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_110  #0x2b
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3da

    :pswitch_11c  #0x2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_12f  #0x29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3da

    :pswitch_142  #0x28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkAllowlist(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_155  #0x27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkDenylist(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_168  #0x26
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_177  #0x25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_186  #0x24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_199  #0x23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_1a8  #0x22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_1bb  #0x21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_3da

    :pswitch_1ce  #0x20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_1e1  #0x1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_1f4  #0x1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_20b  #0x1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_21e  #0x1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_231  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_244  #0x1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_257  #0x19
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_3da

    :pswitch_263  #0x18
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_3da

    :pswitch_26f  #0x17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_27e  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_28d  #0x15
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3da

    :pswitch_299  #0x14
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_2a1  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startTetheringWithConfiguration(Z[Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_2b4  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_2c3  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_2d2  #0x10
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_3da

    :pswitch_2de  #0xf
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_2e6  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_2fd  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_314  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_327  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_336  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_345  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_358  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3da

    :pswitch_367  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3da

    :pswitch_375  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3da

    :pswitch_383  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3da

    :pswitch_399  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3da

    :pswitch_3ab  #0x3
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_3da

    :pswitch_3b6  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3da

    :pswitch_3c8  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_3da
    return v1

    nop

    :pswitch_data_3dc
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_3e2
    .packed-switch 0x1
        :pswitch_3c8  #00000001
        :pswitch_3b6  #00000002
        :pswitch_3ab  #00000003
        :pswitch_399  #00000004
        :pswitch_383  #00000005
        :pswitch_375  #00000006
        :pswitch_367  #00000007
        :pswitch_358  #00000008
        :pswitch_345  #00000009
        :pswitch_336  #0000000a
        :pswitch_327  #0000000b
        :pswitch_314  #0000000c
        :pswitch_2fd  #0000000d
        :pswitch_2e6  #0000000e
        :pswitch_2de  #0000000f
        :pswitch_2d2  #00000010
        :pswitch_2c3  #00000011
        :pswitch_2b4  #00000012
        :pswitch_2a1  #00000013
        :pswitch_299  #00000014
        :pswitch_28d  #00000015
        :pswitch_27e  #00000016
        :pswitch_26f  #00000017
        :pswitch_263  #00000018
        :pswitch_257  #00000019
        :pswitch_244  #0000001a
        :pswitch_231  #0000001b
        :pswitch_21e  #0000001c
        :pswitch_20b  #0000001d
        :pswitch_1f4  #0000001e
        :pswitch_1e1  #0000001f
        :pswitch_1ce  #00000020
        :pswitch_1bb  #00000021
        :pswitch_1a8  #00000022
        :pswitch_199  #00000023
        :pswitch_186  #00000024
        :pswitch_177  #00000025
        :pswitch_168  #00000026
        :pswitch_155  #00000027
        :pswitch_142  #00000028
        :pswitch_12f  #00000029
        :pswitch_11c  #0000002a
        :pswitch_110  #0000002b
        :pswitch_101  #0000002c
        :pswitch_f5  #0000002d
        :pswitch_e2  #0000002e
        :pswitch_cb  #0000002f
        :pswitch_b4  #00000030
        :pswitch_a1  #00000031
        :pswitch_92  #00000032
        :pswitch_83  #00000033
        :pswitch_6e  #00000034
        :pswitch_5f  #00000035
        :pswitch_4a  #00000036
        :pswitch_37  #00000037
        :pswitch_2b  #00000038
        :pswitch_1c  #00000039
    .end packed-switch
.end method
