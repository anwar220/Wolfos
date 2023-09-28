# classes2.dex

.class public abstract Landroid/hardware/tv/tuner/IDvr$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/tv/tuner/IDvr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_attachFilter:I = 0x3

.field static final TRANSACTION_close:I = 0x8

.field static final TRANSACTION_configure:I = 0x2

.field static final TRANSACTION_detachFilter:I = 0x4

.field static final TRANSACTION_flush:I = 0x7

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getQueueDesc:I = 0x1

.field static final TRANSACTION_start:I = 0x5

.field static final TRANSACTION_stop:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IDvr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IDvr;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IDvr;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IDvr;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_98

    packed-switch p1, :pswitch_data_a6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_96

    :pswitch_39  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->flush()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_96

    :pswitch_40  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->stop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_96

    :pswitch_47  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->start()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_96

    :pswitch_4e  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDvr$Stub;->detachFilter(Landroid/hardware/tv/tuner/IFilter;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_96

    :pswitch_60  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDvr$Stub;->attachFilter(Landroid/hardware/tv/tuner/IFilter;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_96

    :pswitch_72  #0x2
    sget-object v2, Landroid/hardware/tv/tuner/DvrSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DvrSettings;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDvr$Stub;->configure(Landroid/hardware/tv/tuner/DvrSettings;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_96

    :pswitch_84  #0x1
    new-instance v2, Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {v2}, Landroid/hardware/common/fmq/MQDescriptor;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDvr$Stub;->getQueueDesc(Landroid/hardware/common/fmq/MQDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_96
    return v1

    nop

    :sswitch_data_98
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_84  #00000001
        :pswitch_72  #00000002
        :pswitch_60  #00000003
        :pswitch_4e  #00000004
        :pswitch_47  #00000005
        :pswitch_40  #00000006
        :pswitch_39  #00000007
        :pswitch_32  #00000008
    .end packed-switch
.end method
