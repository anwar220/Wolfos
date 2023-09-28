# classes3.dex

.class public abstract Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onTargetActivityIntentRequested:I = 0x6

.field static final TRANSACTION_onWalletCardSelected:I = 0x2

.field static final TRANSACTION_onWalletCardsRequested:I = 0x1

.field static final TRANSACTION_onWalletDismissed:I = 0x3

.field static final TRANSACTION_registerWalletServiceEventListener:I = 0x4

.field static final TRANSACTION_unregisterWalletServiceEventListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string/jumbo v0, "onTargetActivityIntentRequested"

    return-object v0

    :pswitch_9  #0x5
    const-string/jumbo v0, "unregisterWalletServiceEventListener"

    return-object v0

    :pswitch_d  #0x4
    const-string/jumbo v0, "registerWalletServiceEventListener"

    return-object v0

    :pswitch_11  #0x3
    const-string/jumbo v0, "onWalletDismissed"

    return-object v0

    :pswitch_15  #0x2
    const-string/jumbo v0, "onWalletCardSelected"

    return-object v0

    :pswitch_19  #0x1
    const-string/jumbo v0, "onWalletCardsRequested"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_15  #00000002
        :pswitch_11  #00000003
        :pswitch_d  #00000004
        :pswitch_9  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_7c

    packed-switch p1, :pswitch_data_82

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    goto :goto_7b

    :pswitch_2b  #0x5
    sget-object v2, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    goto :goto_7b

    :pswitch_3a  #0x4
    sget-object v2, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    goto :goto_7b

    :pswitch_51  #0x3
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletDismissed()V

    goto :goto_7b

    :pswitch_55  #0x2
    sget-object v2, Landroid/service/quickaccesswallet/SelectWalletCardRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    goto :goto_7b

    :pswitch_64  #0x1
    sget-object v2, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    nop

    :goto_7b
    return v1

    :pswitch_data_7c
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_64  #00000001
        :pswitch_55  #00000002
        :pswitch_51  #00000003
        :pswitch_3a  #00000004
        :pswitch_2b  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
