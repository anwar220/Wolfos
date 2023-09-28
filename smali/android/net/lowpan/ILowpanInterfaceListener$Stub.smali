# classes2.dex

.class public abstract Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/net/lowpan/ILowpanInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConnectedChanged:I = 0x2

.field static final TRANSACTION_onEnabledChanged:I = 0x1

.field static final TRANSACTION_onLinkAddressAdded:I = 0x9

.field static final TRANSACTION_onLinkAddressRemoved:I = 0xa

.field static final TRANSACTION_onLinkNetworkAdded:I = 0x7

.field static final TRANSACTION_onLinkNetworkRemoved:I = 0x8

.field static final TRANSACTION_onLowpanIdentityChanged:I = 0x6

.field static final TRANSACTION_onReceiveFromCommissioner:I = 0xb

.field static final TRANSACTION_onRoleChanged:I = 0x4

.field static final TRANSACTION_onStateChanged:I = 0x5

.field static final TRANSACTION_onUpChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterfaceListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanInterfaceListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_26

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xb
    const-string v0, "onReceiveFromCommissioner"

    return-object v0

    :pswitch_8  #0xa
    const-string v0, "onLinkAddressRemoved"

    return-object v0

    :pswitch_b  #0x9
    const-string v0, "onLinkAddressAdded"

    return-object v0

    :pswitch_e  #0x8
    const-string v0, "onLinkNetworkRemoved"

    return-object v0

    :pswitch_11  #0x7
    const-string v0, "onLinkNetworkAdded"

    return-object v0

    :pswitch_14  #0x6
    const-string v0, "onLowpanIdentityChanged"

    return-object v0

    :pswitch_17  #0x5
    const-string v0, "onStateChanged"

    return-object v0

    :pswitch_1a  #0x4
    const-string v0, "onRoleChanged"

    return-object v0

    :pswitch_1d  #0x3
    const-string v0, "onUpChanged"

    return-object v0

    :pswitch_20  #0x2
    const-string v0, "onConnectedChanged"

    return-object v0

    :pswitch_23  #0x1
    const-string v0, "onEnabledChanged"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1d  #00000003
        :pswitch_1a  #00000004
        :pswitch_17  #00000005
        :pswitch_14  #00000006
        :pswitch_11  #00000007
        :pswitch_e  #00000008
        :pswitch_b  #00000009
        :pswitch_8  #0000000a
        :pswitch_5  #0000000b
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_a4

    packed-switch p1, :pswitch_data_aa

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onReceiveFromCommissioner([B)V

    goto/16 :goto_a3

    :pswitch_28  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressRemoved(Ljava/lang/String;)V

    goto/16 :goto_a3

    :pswitch_34  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressAdded(Ljava/lang/String;)V

    goto :goto_a3

    :pswitch_3f  #0x8
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    goto :goto_a3

    :pswitch_4e  #0x7
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    goto :goto_a3

    :pswitch_5d  #0x6
    sget-object v2, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    goto :goto_a3

    :pswitch_6c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onStateChanged(Ljava/lang/String;)V

    goto :goto_a3

    :pswitch_77  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onRoleChanged(Ljava/lang/String;)V

    goto :goto_a3

    :pswitch_82  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onUpChanged(Z)V

    goto :goto_a3

    :pswitch_8d  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onConnectedChanged(Z)V

    goto :goto_a3

    :pswitch_98  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onEnabledChanged(Z)V

    nop

    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_98  #00000001
        :pswitch_8d  #00000002
        :pswitch_82  #00000003
        :pswitch_77  #00000004
        :pswitch_6c  #00000005
        :pswitch_5d  #00000006
        :pswitch_4e  #00000007
        :pswitch_3f  #00000008
        :pswitch_34  #00000009
        :pswitch_28  #0000000a
        :pswitch_1c  #0000000b
    .end packed-switch
.end method
