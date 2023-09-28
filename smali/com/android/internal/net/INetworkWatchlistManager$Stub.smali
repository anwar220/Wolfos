# classes4.dex

.class public abstract Lcom/android/internal/net/INetworkWatchlistManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/net/INetworkWatchlistManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/INetworkWatchlistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.net.INetworkWatchlistManager"

.field static final TRANSACTION_getWatchlistConfigHash:I = 0x5

.field static final TRANSACTION_reloadWatchlist:I = 0x3

.field static final TRANSACTION_reportWatchlistIfNecessary:I = 0x4

.field static final TRANSACTION_startWatchlistLogging:I = 0x1

.field static final TRANSACTION_stopWatchlistLogging:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/net/INetworkWatchlistManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/INetworkWatchlistManager;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x5
    const-string v0, "getWatchlistConfigHash"

    return-object v0

    :pswitch_8  #0x4
    const-string/jumbo v0, "reportWatchlistIfNecessary"

    return-object v0

    :pswitch_c  #0x3
    const-string/jumbo v0, "reloadWatchlist"

    return-object v0

    :pswitch_10  #0x2
    const-string/jumbo v0, "stopWatchlistLogging"

    return-object v0

    :pswitch_14  #0x1
    const-string/jumbo v0, "startWatchlistLogging"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_10  #00000002
        :pswitch_c  #00000003
        :pswitch_8  #00000004
        :pswitch_5  #00000005
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_4c

    packed-switch p1, :pswitch_data_52

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x5
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->getWatchlistConfigHash()[B

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_4b

    :pswitch_27  #0x4
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->reportWatchlistIfNecessary()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4b

    :pswitch_2e  #0x3
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->reloadWatchlist()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4b

    :pswitch_35  #0x2
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->stopWatchlistLogging()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_4b

    :pswitch_40  #0x1
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->startWatchlistLogging()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_40  #00000001
        :pswitch_35  #00000002
        :pswitch_2e  #00000003
        :pswitch_27  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method
