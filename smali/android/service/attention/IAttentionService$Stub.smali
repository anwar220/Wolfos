# classes3.dex

.class public abstract Landroid/service/attention/IAttentionService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/attention/IAttentionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/attention/IAttentionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/attention/IAttentionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelAttentionCheck:I = 0x2

.field static final TRANSACTION_checkAttention:I = 0x1

.field static final TRANSACTION_onStartProximityUpdates:I = 0x3

.field static final TRANSACTION_onStopProximityUpdates:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.attention.IAttentionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/attention/IAttentionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.attention.IAttentionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/attention/IAttentionService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/attention/IAttentionService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/attention/IAttentionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/attention/IAttentionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string/jumbo v0, "onStopProximityUpdates"

    return-object v0

    :pswitch_9  #0x3
    const-string/jumbo v0, "onStartProximityUpdates"

    return-object v0

    :pswitch_d  #0x2
    const-string v0, "cancelAttentionCheck"

    return-object v0

    :pswitch_10  #0x1
    const-string v0, "checkAttention"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10  #00000001
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

    invoke-static {p1}, Landroid/service/attention/IAttentionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.service.attention.IAttentionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_4e

    packed-switch p1, :pswitch_data_54

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x4
    invoke-virtual {p0}, Landroid/service/attention/IAttentionService$Stub;->onStopProximityUpdates()V

    goto :goto_4d

    :pswitch_20  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/attention/IProximityUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IProximityUpdateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/attention/IAttentionService$Stub;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V

    goto :goto_4d

    :pswitch_2f  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/attention/IAttentionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/attention/IAttentionService$Stub;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V

    goto :goto_4d

    :pswitch_3e  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/attention/IAttentionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/attention/IAttentionService$Stub;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    nop

    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_2f  #00000002
        :pswitch_20  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method
