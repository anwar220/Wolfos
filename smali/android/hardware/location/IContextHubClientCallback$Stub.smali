# classes2.dex

.class public abstract Landroid/hardware/location/IContextHubClientCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/location/IContextHubClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubClientCallback"

.field static final TRANSACTION_onClientAuthorizationChanged:I = 0x8

.field static final TRANSACTION_onHubReset:I = 0x2

.field static final TRANSACTION_onMessageFromNanoApp:I = 0x1

.field static final TRANSACTION_onNanoAppAborted:I = 0x3

.field static final TRANSACTION_onNanoAppDisabled:I = 0x7

.field static final TRANSACTION_onNanoAppEnabled:I = 0x6

.field static final TRANSACTION_onNanoAppLoaded:I = 0x4

.field static final TRANSACTION_onNanoAppUnloaded:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.location.IContextHubClientCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubClientCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClientCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IContextHubClientCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x8
    const-string v0, "onClientAuthorizationChanged"

    return-object v0

    :pswitch_8  #0x7
    const-string v0, "onNanoAppDisabled"

    return-object v0

    :pswitch_b  #0x6
    const-string v0, "onNanoAppEnabled"

    return-object v0

    :pswitch_e  #0x5
    const-string v0, "onNanoAppUnloaded"

    return-object v0

    :pswitch_11  #0x4
    const-string v0, "onNanoAppLoaded"

    return-object v0

    :pswitch_14  #0x3
    const-string v0, "onNanoAppAborted"

    return-object v0

    :pswitch_17  #0x2
    const-string v0, "onHubReset"

    return-object v0

    :pswitch_1a  #0x1
    const-string v0, "onMessageFromNanoApp"

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

    invoke-static {p1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.hardware.location.IContextHubClientCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_7a

    packed-switch p1, :pswitch_data_80

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onClientAuthorizationChanged(JI)V

    goto :goto_79

    :pswitch_2b  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppDisabled(J)V

    goto :goto_79

    :pswitch_36  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppEnabled(J)V

    goto :goto_79

    :pswitch_41  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppUnloaded(J)V

    goto :goto_79

    :pswitch_4c  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppLoaded(J)V

    goto :goto_79

    :pswitch_57  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppAborted(JI)V

    goto :goto_79

    :pswitch_66  #0x2
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onHubReset()V

    goto :goto_79

    :pswitch_6a  #0x1
    sget-object v2, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    nop

    :goto_79
    return v1

    :pswitch_data_7a
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6a  #00000001
        :pswitch_66  #00000002
        :pswitch_57  #00000003
        :pswitch_4c  #00000004
        :pswitch_41  #00000005
        :pswitch_36  #00000006
        :pswitch_2b  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method
