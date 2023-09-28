# classes2.dex

.class public abstract Landroid/hardware/gnss/IGnssCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/gnss/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_gnssAcquireWakelockCb:I = 0x6

.field static final TRANSACTION_gnssLocationCb:I = 0x4

.field static final TRANSACTION_gnssNmeaCb:I = 0x5

.field static final TRANSACTION_gnssReleaseWakelockCb:I = 0x7

.field static final TRANSACTION_gnssRequestLocationCb:I = 0xa

.field static final TRANSACTION_gnssRequestTimeCb:I = 0x9

.field static final TRANSACTION_gnssSetCapabilitiesCb:I = 0x1

.field static final TRANSACTION_gnssSetSystemInfoCb:I = 0x8

.field static final TRANSACTION_gnssStatusCb:I = 0x2

.field static final TRANSACTION_gnssSvStatusCb:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/gnss/IGnssCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/gnss/IGnssCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_c0

    packed-switch p1, :pswitch_data_ce

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssRequestLocationCb(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_bf

    :pswitch_45  #0x9
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssRequestTimeCb()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_bf

    :pswitch_4d  #0x8
    sget-object v2, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssSetSystemInfoCb(Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bf

    :pswitch_5f  #0x7
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssReleaseWakelockCb()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bf

    :pswitch_66  #0x6
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssAcquireWakelockCb()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bf

    :pswitch_6d  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssNmeaCb(JLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bf

    :pswitch_7f  #0x4
    sget-object v2, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/GnssLocation;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssLocationCb(Landroid/hardware/gnss/GnssLocation;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bf

    :pswitch_91  #0x3
    sget-object v2, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssSvStatusCb([Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bf

    :pswitch_a3  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssStatusCb(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bf

    :pswitch_b1  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssCallback$Stub;->gnssSetCapabilitiesCb(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_bf
    return v1

    :sswitch_data_c0
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_b1  #00000001
        :pswitch_a3  #00000002
        :pswitch_91  #00000003
        :pswitch_7f  #00000004
        :pswitch_6d  #00000005
        :pswitch_66  #00000006
        :pswitch_5f  #00000007
        :pswitch_4d  #00000008
        :pswitch_45  #00000009
        :pswitch_32  #0000000a
    .end packed-switch
.end method
