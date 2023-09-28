# classes2.dex

.class public abstract Landroid/hardware/tv/tuner/IFilter$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/tv/tuner/IFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_configure:I = 0x3

.field static final TRANSACTION_configureAvStreamType:I = 0x4

.field static final TRANSACTION_configureIpCid:I = 0x5

.field static final TRANSACTION_configureMonitorEvent:I = 0x6

.field static final TRANSACTION_flush:I = 0x9

.field static final TRANSACTION_getAvSharedHandle:I = 0xa

.field static final TRANSACTION_getId:I = 0xb

.field static final TRANSACTION_getId64Bit:I = 0xc

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getQueueDesc:I = 0x1

.field static final TRANSACTION_releaseAvHandle:I = 0xd

.field static final TRANSACTION_setDataSource:I = 0xe

.field static final TRANSACTION_setDelayHint:I = 0xf

.field static final TRANSACTION_start:I = 0x7

.field static final TRANSACTION_stop:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IFilter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IFilter;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_10e

    packed-switch p1, :pswitch_data_11c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0xf
    sget-object v2, Landroid/hardware/tv/tuner/FilterDelayHint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FilterDelayHint;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->setDelayHint(Landroid/hardware/tv/tuner/FilterDelayHint;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10c

    :pswitch_45  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->setDataSource(Landroid/hardware/tv/tuner/IFilter;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10c

    :pswitch_58  #0xd
    sget-object v2, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/NativeHandle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/tv/tuner/IFilter$Stub;->releaseAvHandle(Landroid/hardware/common/NativeHandle;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10c

    :pswitch_6f  #0xc
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getId64Bit()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_10c

    :pswitch_7b  #0xb
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getId()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10c

    :pswitch_87  #0xa
    new-instance v2, Landroid/hardware/common/NativeHandle;

    invoke-direct {v2}, Landroid/hardware/common/NativeHandle;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->getAvSharedHandle(Landroid/hardware/common/NativeHandle;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_10c

    :pswitch_9e  #0x9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->flush()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10c

    :pswitch_a5  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->stop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10c

    :pswitch_ac  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->start()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10c

    :pswitch_b3  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureMonitorEvent(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10c

    :pswitch_c1  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureIpCid(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10c

    :pswitch_cf  #0x4
    sget-object v2, Landroid/hardware/tv/tuner/AvStreamType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/AvStreamType;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureAvStreamType(Landroid/hardware/tv/tuner/AvStreamType;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10c

    :pswitch_e1  #0x3
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->configure(Landroid/hardware/tv/tuner/DemuxFilterSettings;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10c

    :pswitch_f3  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10c

    :pswitch_fa  #0x1
    new-instance v2, Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {v2}, Landroid/hardware/common/fmq/MQDescriptor;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->getQueueDesc(Landroid/hardware/common/fmq/MQDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_10c
    return v1

    nop

    :sswitch_data_10e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_fa  #00000001
        :pswitch_f3  #00000002
        :pswitch_e1  #00000003
        :pswitch_cf  #00000004
        :pswitch_c1  #00000005
        :pswitch_b3  #00000006
        :pswitch_ac  #00000007
        :pswitch_a5  #00000008
        :pswitch_9e  #00000009
        :pswitch_87  #0000000a
        :pswitch_7b  #0000000b
        :pswitch_6f  #0000000c
        :pswitch_58  #0000000d
        :pswitch_45  #0000000e
        :pswitch_32  #0000000f
    .end packed-switch
.end method
