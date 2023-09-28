# classes2.dex

.class public abstract Landroid/media/IRemoteDisplayProvider$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/IRemoteDisplayProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteDisplayProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteDisplayProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteDisplayProvider"

.field static final TRANSACTION_adjustVolume:I = 0x6

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setDiscoveryMode:I = 0x2

.field static final TRANSACTION_setVolume:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteDisplayProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayProvider;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.IRemoteDisplayProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IRemoteDisplayProvider;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/IRemoteDisplayProvider;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/IRemoteDisplayProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IRemoteDisplayProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string v0, "adjustVolume"

    return-object v0

    :pswitch_8  #0x5
    const-string v0, "setVolume"

    return-object v0

    :pswitch_b  #0x4
    const-string v0, "disconnect"

    return-object v0

    :pswitch_e  #0x3
    const-string v0, "connect"

    return-object v0

    :pswitch_11  #0x2
    const-string v0, "setDiscoveryMode"

    return-object v0

    :pswitch_14  #0x1
    const-string v0, "setCallback"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_11  #00000002
        :pswitch_e  #00000003
        :pswitch_b  #00000004
        :pswitch_8  #00000005
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

    invoke-static {p1}, Landroid/media/IRemoteDisplayProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.IRemoteDisplayProvider"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_6c

    packed-switch p1, :pswitch_data_72

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IRemoteDisplayProvider$Stub;->adjustVolume(Ljava/lang/String;I)V

    goto :goto_6a

    :pswitch_2b  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IRemoteDisplayProvider$Stub;->setVolume(Ljava/lang/String;I)V

    goto :goto_6a

    :pswitch_3a  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IRemoteDisplayProvider$Stub;->disconnect(Ljava/lang/String;)V

    goto :goto_6a

    :pswitch_45  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IRemoteDisplayProvider$Stub;->connect(Ljava/lang/String;)V

    goto :goto_6a

    :pswitch_50  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IRemoteDisplayProvider$Stub;->setDiscoveryMode(I)V

    goto :goto_6a

    :pswitch_5b  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IRemoteDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IRemoteDisplayProvider$Stub;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    nop

    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5b  #00000001
        :pswitch_50  #00000002
        :pswitch_45  #00000003
        :pswitch_3a  #00000004
        :pswitch_2b  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
