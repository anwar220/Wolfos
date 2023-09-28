# classes2.dex

.class public abstract Landroid/hardware/vibrator/IVibratorManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/vibrator/IVibratorManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelSynced:I = 0x6

.field static final TRANSACTION_getCapabilities:I = 0x1

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getVibrator:I = 0x3

.field static final TRANSACTION_getVibratorIds:I = 0x2

.field static final TRANSACTION_prepareSynced:I = 0x4

.field static final TRANSACTION_triggerSynced:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/vibrator/IVibratorManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/vibrator/IVibratorManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_82

    packed-switch p1, :pswitch_data_90

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x6
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->cancelSynced()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_81

    :pswitch_39  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibratorManager$Stub;->triggerSynced(Landroid/hardware/vibrator/IVibratorCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_81

    :pswitch_4b  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibratorManager$Stub;->prepareSynced([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_81

    :pswitch_59  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getVibrator(I)Landroid/hardware/vibrator/IVibrator;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_81

    :pswitch_6b  #0x2
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getVibratorIds()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_81

    :pswitch_76  #0x1
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getCapabilities()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_81
    return v1

    :sswitch_data_82
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_76  #00000001
        :pswitch_6b  #00000002
        :pswitch_59  #00000003
        :pswitch_4b  #00000004
        :pswitch_39  #00000005
        :pswitch_32  #00000006
    .end packed-switch
.end method
