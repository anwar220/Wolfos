# classes3.dex

.class public abstract Landroid/telephony/INetworkService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/telephony/INetworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/INetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/INetworkService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.INetworkService"

.field static final TRANSACTION_createNetworkServiceProvider:I = 0x1

.field static final TRANSACTION_registerForNetworkRegistrationInfoChanged:I = 0x4

.field static final TRANSACTION_removeNetworkServiceProvider:I = 0x2

.field static final TRANSACTION_requestNetworkRegistrationInfo:I = 0x3

.field static final TRANSACTION_unregisterForNetworkRegistrationInfoChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.INetworkService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/INetworkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.INetworkService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/INetworkService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/INetworkService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/INetworkService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/INetworkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x5
    const-string/jumbo v0, "unregisterForNetworkRegistrationInfoChanged"

    return-object v0

    :pswitch_9  #0x4
    const-string/jumbo v0, "registerForNetworkRegistrationInfoChanged"

    return-object v0

    :pswitch_d  #0x3
    const-string/jumbo v0, "requestNetworkRegistrationInfo"

    return-object v0

    :pswitch_11  #0x2
    const-string/jumbo v0, "removeNetworkServiceProvider"

    return-object v0

    :pswitch_15  #0x1
    const-string v0, "createNetworkServiceProvider"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_11  #00000002
        :pswitch_d  #00000003
        :pswitch_9  #00000004
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

    invoke-static {p1}, Landroid/telephony/INetworkService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.INetworkService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_70

    packed-switch p1, :pswitch_data_76

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/INetworkService$Stub;->unregisterForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V

    goto :goto_6f

    :pswitch_2f  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/INetworkService$Stub;->registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V

    goto :goto_6f

    :pswitch_42  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/INetworkService$Stub;->requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V

    goto :goto_6f

    :pswitch_59  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/INetworkService$Stub;->removeNetworkServiceProvider(I)V

    goto :goto_6f

    :pswitch_64  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/INetworkService$Stub;->createNetworkServiceProvider(I)V

    nop

    :goto_6f
    return v1

    :pswitch_data_70
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_64  #00000001
        :pswitch_59  #00000002
        :pswitch_42  #00000003
        :pswitch_2f  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method
