# classes2.dex

.class public abstract Landroid/media/tv/ITvInputHardwareCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/tv/ITvInputHardwareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardwareCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardwareCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputHardwareCallback"

.field static final TRANSACTION_onReleased:I = 0x1

.field static final TRANSACTION_onStreamConfigChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.ITvInputHardwareCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardwareCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.tv.ITvInputHardwareCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputHardwareCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputHardwareCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputHardwareCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputHardwareCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x2
    const-string v0, "onStreamConfigChanged"

    return-object v0

    :pswitch_8  #0x1
    const-string v0, "onReleased"

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

    invoke-static {p1}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.tv.ITvInputHardwareCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_30

    packed-switch p1, :pswitch_data_36

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x2
    sget-object v2, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V

    goto :goto_2f

    :pswitch_2b  #0x1
    invoke-virtual {p0}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->onReleased()V

    nop

    :goto_2f
    return v1

    :pswitch_data_30
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2b  #00000001
        :pswitch_1c  #00000002
    .end packed-switch
.end method
