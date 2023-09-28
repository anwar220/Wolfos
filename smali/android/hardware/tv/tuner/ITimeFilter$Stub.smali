# classes2.dex

.class public abstract Landroid/hardware/tv/tuner/ITimeFilter$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/tv/tuner/ITimeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/ITimeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearTimeStamp:I = 0x2

.field static final TRANSACTION_close:I = 0x5

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSourceTime:I = 0x4

.field static final TRANSACTION_getTimeStamp:I = 0x3

.field static final TRANSACTION_setTimeStamp:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/ITimeFilter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/ITimeFilter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/ITimeFilter;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_66

    packed-switch p1, :pswitch_data_74

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_64

    :pswitch_39  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getSourceTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_64

    :pswitch_44  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_64

    :pswitch_4f  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->clearTimeStamp()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_64

    :pswitch_56  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/tv/tuner/ITimeFilter$Stub;->setTimeStamp(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_64
    return v1

    nop

    :sswitch_data_66
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_56  #00000001
        :pswitch_4f  #00000002
        :pswitch_44  #00000003
        :pswitch_39  #00000004
        :pswitch_32  #00000005
    .end packed-switch
.end method
