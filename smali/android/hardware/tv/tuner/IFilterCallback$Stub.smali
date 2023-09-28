# classes2.dex

.class public abstract Landroid/hardware/tv/tuner/IFilterCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/tv/tuner/IFilterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFilterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFilterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onFilterEvent:I = 0x1

.field static final TRANSACTION_onFilterStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilterCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IFilterCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IFilterCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IFilterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IFilterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_4e

    packed-switch p1, :pswitch_data_5c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->onFilterStatus(B)V

    goto :goto_4c

    :pswitch_3d  #0x1
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/tv/tuner/DemuxFilterEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilterCallback$Stub;->onFilterEvent([Landroid/hardware/tv/tuner/DemuxFilterEvent;)V

    nop

    :goto_4c
    return v1

    nop

    :sswitch_data_4e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_32  #00000002
    .end packed-switch
.end method
