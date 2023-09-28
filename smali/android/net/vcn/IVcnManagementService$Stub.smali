# classes2.dex

.class public abstract Landroid/net/vcn/IVcnManagementService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/net/vcn/IVcnManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/IVcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/IVcnManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addVcnUnderlyingNetworkPolicyListener:I = 0x4

.field static final TRANSACTION_clearVcnConfig:I = 0x2

.field static final TRANSACTION_getConfiguredSubscriptionGroups:I = 0x3

.field static final TRANSACTION_getUnderlyingNetworkPolicy:I = 0x6

.field static final TRANSACTION_registerVcnStatusCallback:I = 0x7

.field static final TRANSACTION_removeVcnUnderlyingNetworkPolicyListener:I = 0x5

.field static final TRANSACTION_setVcnConfig:I = 0x1

.field static final TRANSACTION_unregisterVcnStatusCallback:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.vcn.IVcnManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/net/vcn/IVcnManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnManagementService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.vcn.IVcnManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/vcn/IVcnManagementService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/vcn/IVcnManagementService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/vcn/IVcnManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/vcn/IVcnManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x8
    const-string v0, "unregisterVcnStatusCallback"

    return-object v0

    :pswitch_8  #0x7
    const-string v0, "registerVcnStatusCallback"

    return-object v0

    :pswitch_b  #0x6
    const-string v0, "getUnderlyingNetworkPolicy"

    return-object v0

    :pswitch_e  #0x5
    const-string v0, "removeVcnUnderlyingNetworkPolicyListener"

    return-object v0

    :pswitch_11  #0x4
    const-string v0, "addVcnUnderlyingNetworkPolicyListener"

    return-object v0

    :pswitch_14  #0x3
    const-string v0, "getConfiguredSubscriptionGroups"

    return-object v0

    :pswitch_17  #0x2
    const-string v0, "clearVcnConfig"

    return-object v0

    :pswitch_1a  #0x1
    const-string v0, "setVcnConfig"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/net/vcn/IVcnManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.net.vcn.IVcnManagementService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_d8

    packed-switch p1, :pswitch_data_de

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnStatusCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d6

    :pswitch_2f  #0x7
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/vcn/IVcnStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnStatusCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/net/vcn/IVcnManagementService$Stub;->registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d6

    :pswitch_4e  #0x6
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/net/vcn/IVcnManagementService$Stub;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_d6

    :pswitch_6c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d6

    :pswitch_7e  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d6

    :pswitch_90  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_d6

    :pswitch_a2  #0x2
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/net/vcn/IVcnManagementService$Stub;->clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d6

    :pswitch_b8  #0x1
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    sget-object v3, Landroid/net/vcn/VcnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/net/vcn/IVcnManagementService$Stub;->setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_d6
    return v1

    nop

    :pswitch_data_d8
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_b8  #00000001
        :pswitch_a2  #00000002
        :pswitch_90  #00000003
        :pswitch_7e  #00000004
        :pswitch_6c  #00000005
        :pswitch_4e  #00000006
        :pswitch_2f  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method
