# classes2.dex

.class public abstract Landroid/hardware/gnss/IGnssBatching$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/gnss/IGnssBatching;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssBatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cleanup:I = 0x6

.field static final TRANSACTION_flush:I = 0x4

.field static final TRANSACTION_getBatchSize:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_start:I = 0x3

.field static final TRANSACTION_stop:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssBatching$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssBatching;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssBatching;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssBatching;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_78

    packed-switch p1, :pswitch_data_86

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x6
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->cleanup()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_76

    :pswitch_39  #0x5
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->stop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_76

    :pswitch_40  #0x4
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->flush()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_76

    :pswitch_47  #0x3
    sget-object v2, Landroid/hardware/gnss/IGnssBatching$Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IGnssBatching$Options;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssBatching$Stub;->start(Landroid/hardware/gnss/IGnssBatching$Options;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_76

    :pswitch_59  #0x2
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getBatchSize()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_76

    :pswitch_64  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssBatchingCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/gnss/IGnssBatching$Stub;->init(Landroid/hardware/gnss/IGnssBatchingCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_76
    return v1

    nop

    :sswitch_data_78
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_64  #00000001
        :pswitch_59  #00000002
        :pswitch_47  #00000003
        :pswitch_40  #00000004
        :pswitch_39  #00000005
        :pswitch_32  #00000006
    .end packed-switch
.end method
