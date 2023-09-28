# classes2.dex

.class public abstract Landroid/net/wifi/nl80211/IScanEvent$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/net/wifi/nl80211/IScanEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IScanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IScanEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_OnScanFailed:I = 0x2

.field static final TRANSACTION_OnScanResultReady:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.nl80211.IScanEvent"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IScanEvent;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.wifi.nl80211.IScanEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IScanEvent;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IScanEvent;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IScanEvent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x2
    const-string v0, "OnScanFailed"

    return-object v0

    :pswitch_8  #0x1
    const-string v0, "OnScanResultReady"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.net.wifi.nl80211.IScanEvent"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_26

    packed-switch p1, :pswitch_data_2c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x2
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->OnScanFailed()V

    goto :goto_24

    :pswitch_20  #0x1
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->OnScanResultReady()V

    nop

    :goto_24
    return v1

    nop

    :pswitch_data_26
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1c  #00000002
    .end packed-switch
.end method
