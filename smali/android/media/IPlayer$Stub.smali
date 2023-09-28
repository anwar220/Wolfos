# classes2.dex

.class public abstract Landroid/media/IPlayer$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/IPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.IPlayer"

.field static final TRANSACTION_applyVolumeShaper:I = 0x7

.field static final TRANSACTION_pause:I = 0x2

.field static final TRANSACTION_setPan:I = 0x5

.field static final TRANSACTION_setStartDelayMs:I = 0x6

.field static final TRANSACTION_setVolume:I = 0x4

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IPlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.IPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IPlayer;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/IPlayer;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/IPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x7
    const-string v0, "applyVolumeShaper"

    return-object v0

    :pswitch_8  #0x6
    const-string v0, "setStartDelayMs"

    return-object v0

    :pswitch_b  #0x5
    const-string v0, "setPan"

    return-object v0

    :pswitch_e  #0x4
    const-string v0, "setVolume"

    return-object v0

    :pswitch_11  #0x3
    const-string v0, "stop"

    return-object v0

    :pswitch_14  #0x2
    const-string v0, "pause"

    return-object v0

    :pswitch_17  #0x1
    const-string v0, "start"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17  #00000001
        :pswitch_14  #00000002
        :pswitch_11  #00000003
        :pswitch_e  #00000004
        :pswitch_b  #00000005
        :pswitch_8  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/media/IPlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.IPlayer"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_62

    packed-switch p1, :pswitch_data_68

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x7
    sget-object v2, Landroid/media/VolumeShaperConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/VolumeShaperConfiguration;

    sget-object v3, Landroid/media/VolumeShaperOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/VolumeShaperOperation;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IPlayer$Stub;->applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V

    goto :goto_60

    :pswitch_33  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setStartDelayMs(I)V

    goto :goto_60

    :pswitch_3e  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setPan(F)V

    goto :goto_60

    :pswitch_49  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setVolume(F)V

    goto :goto_60

    :pswitch_54  #0x3
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->stop()V

    goto :goto_60

    :pswitch_58  #0x2
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->pause()V

    goto :goto_60

    :pswitch_5c  #0x1
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->start()V

    nop

    :goto_60
    return v1

    nop

    :pswitch_data_62
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5c  #00000001
        :pswitch_58  #00000002
        :pswitch_54  #00000003
        :pswitch_49  #00000004
        :pswitch_3e  #00000005
        :pswitch_33  #00000006
        :pswitch_1c  #00000007
    .end packed-switch
.end method
