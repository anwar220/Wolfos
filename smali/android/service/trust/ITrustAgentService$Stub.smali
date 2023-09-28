# classes3.dex

.class public abstract Landroid/service/trust/ITrustAgentService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/trust/ITrustAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentService"

.field static final TRANSACTION_onConfigure:I = 0x8

.field static final TRANSACTION_onDeviceLocked:I = 0x6

.field static final TRANSACTION_onDeviceUnlocked:I = 0x7

.field static final TRANSACTION_onEscrowTokenAdded:I = 0xa

.field static final TRANSACTION_onEscrowTokenRemoved:I = 0xc

.field static final TRANSACTION_onTokenStateReceived:I = 0xb

.field static final TRANSACTION_onTrustTimeout:I = 0x5

.field static final TRANSACTION_onUnlockAttempt:I = 0x1

.field static final TRANSACTION_onUnlockLockout:I = 0x4

.field static final TRANSACTION_onUserMayRequestUnlock:I = 0x3

.field static final TRANSACTION_onUserRequestedUnlock:I = 0x2

.field static final TRANSACTION_setCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.trust.ITrustAgentService"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.trust.ITrustAgentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/trust/ITrustAgentService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/trust/ITrustAgentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xc
    const-string/jumbo v0, "onEscrowTokenRemoved"

    return-object v0

    :pswitch_9  #0xb
    const-string/jumbo v0, "onTokenStateReceived"

    return-object v0

    :pswitch_d  #0xa
    const-string/jumbo v0, "onEscrowTokenAdded"

    return-object v0

    :pswitch_11  #0x9
    const-string/jumbo v0, "setCallback"

    return-object v0

    :pswitch_15  #0x8
    const-string/jumbo v0, "onConfigure"

    return-object v0

    :pswitch_19  #0x7
    const-string/jumbo v0, "onDeviceUnlocked"

    return-object v0

    :pswitch_1d  #0x6
    const-string/jumbo v0, "onDeviceLocked"

    return-object v0

    :pswitch_21  #0x5
    const-string/jumbo v0, "onTrustTimeout"

    return-object v0

    :pswitch_25  #0x4
    const-string/jumbo v0, "onUnlockLockout"

    return-object v0

    :pswitch_29  #0x3
    const-string/jumbo v0, "onUserMayRequestUnlock"

    return-object v0

    :pswitch_2d  #0x2
    const-string/jumbo v0, "onUserRequestedUnlock"

    return-object v0

    :pswitch_31  #0x1
    const-string/jumbo v0, "onUnlockAttempt"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2d  #00000002
        :pswitch_29  #00000003
        :pswitch_25  #00000004
        :pswitch_21  #00000005
        :pswitch_1d  #00000006
        :pswitch_19  #00000007
        :pswitch_15  #00000008
        :pswitch_11  #00000009
        :pswitch_d  #0000000a
        :pswitch_9  #0000000b
        :pswitch_5  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/service/trust/ITrustAgentService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.service.trust.ITrustAgentService"

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

    :pswitch_1c  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenRemoved(JZ)V

    goto/16 :goto_a3

    :pswitch_2c  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/trust/ITrustAgentService$Stub;->onTokenStateReceived(JI)V

    goto :goto_a3

    :pswitch_3b  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    goto :goto_a3

    :pswitch_52  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    goto :goto_a3

    :pswitch_61  #0x8
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/trust/ITrustAgentService$Stub;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    goto :goto_a3

    :pswitch_72  #0x7
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceUnlocked()V

    goto :goto_a3

    :pswitch_76  #0x6
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceLocked()V

    goto :goto_a3

    :pswitch_7a  #0x5
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onTrustTimeout()V

    goto :goto_a3

    :pswitch_7e  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockLockout(I)V

    goto :goto_a3

    :pswitch_89  #0x3
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onUserMayRequestUnlock()V

    goto :goto_a3

    :pswitch_8d  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUserRequestedUnlock(Z)V

    goto :goto_a3

    :pswitch_98  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockAttempt(Z)V

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
        :pswitch_89  #00000003
        :pswitch_7e  #00000004
        :pswitch_7a  #00000005
        :pswitch_76  #00000006
        :pswitch_72  #00000007
        :pswitch_61  #00000008
        :pswitch_52  #00000009
        :pswitch_3b  #0000000a
        :pswitch_2c  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method
