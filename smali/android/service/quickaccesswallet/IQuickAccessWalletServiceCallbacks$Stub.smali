# classes3.dex

.class public abstract Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onGetWalletCardsFailure:I = 0x2

.field static final TRANSACTION_onGetWalletCardsSuccess:I = 0x1

.field static final TRANSACTION_onTargetActivityPendingIntentReceived:I = 0x4

.field static final TRANSACTION_onWalletServiceEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_16

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string/jumbo v0, "onTargetActivityPendingIntentReceived"

    return-object v0

    :pswitch_9  #0x3
    const-string/jumbo v0, "onWalletServiceEvent"

    return-object v0

    :pswitch_d  #0x2
    const-string/jumbo v0, "onGetWalletCardsFailure"

    return-object v0

    :pswitch_11  #0x1
    const-string/jumbo v0, "onGetWalletCardsSuccess"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_d  #00000002
        :pswitch_9  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_5a

    packed-switch p1, :pswitch_data_60

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x4
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V

    goto :goto_58

    :pswitch_2b  #0x3
    sget-object v2, Landroid/service/quickaccesswallet/WalletServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/WalletServiceEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    goto :goto_58

    :pswitch_3a  #0x2
    sget-object v2, Landroid/service/quickaccesswallet/GetWalletCardsError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/GetWalletCardsError;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    goto :goto_58

    :pswitch_49  #0x1
    sget-object v2, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    nop

    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_3a  #00000002
        :pswitch_2b  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method