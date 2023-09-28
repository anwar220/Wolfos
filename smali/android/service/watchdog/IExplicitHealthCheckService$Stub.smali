# classes3.dex

.class public abstract Landroid/service/watchdog/IExplicitHealthCheckService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/watchdog/IExplicitHealthCheckService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/watchdog/IExplicitHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_getRequestedPackages:I = 0x5

.field static final TRANSACTION_getSupportedPackages:I = 0x4

.field static final TRANSACTION_request:I = 0x2

.field static final TRANSACTION_setCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.watchdog.IExplicitHealthCheckService"

    invoke-virtual {p0, p0, v0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/watchdog/IExplicitHealthCheckService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.watchdog.IExplicitHealthCheckService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/watchdog/IExplicitHealthCheckService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_16

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x5
    const-string v0, "getRequestedPackages"

    return-object v0

    :pswitch_8  #0x4
    const-string v0, "getSupportedPackages"

    return-object v0

    :pswitch_b  #0x3
    const-string v0, "cancel"

    return-object v0

    :pswitch_e  #0x2
    const-string/jumbo v0, "request"

    return-object v0

    :pswitch_12  #0x1
    const-string/jumbo v0, "setCallback"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
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

    invoke-static {p1}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.service.watchdog.IExplicitHealthCheckService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_60

    packed-switch p1, :pswitch_data_66

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x5
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->getRequestedPackages(Landroid/os/RemoteCallback;)V

    goto :goto_5f

    :pswitch_2b  #0x4
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->getSupportedPackages(Landroid/os/RemoteCallback;)V

    goto :goto_5f

    :pswitch_3a  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->cancel(Ljava/lang/String;)V

    goto :goto_5f

    :pswitch_45  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->request(Ljava/lang/String;)V

    goto :goto_5f

    :pswitch_50  #0x1
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->setCallback(Landroid/os/RemoteCallback;)V

    nop

    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_50  #00000001
        :pswitch_45  #00000002
        :pswitch_3a  #00000003
        :pswitch_2b  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method
