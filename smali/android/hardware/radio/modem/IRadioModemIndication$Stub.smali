# classes2.dex

.class public abstract Landroid/hardware/radio/modem/IRadioModemIndication$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModemIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModemIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_hardwareConfigChanged:I = 0x1

.field static final TRANSACTION_modemReset:I = 0x2

.field static final TRANSACTION_radioCapabilityIndication:I = 0x3

.field static final TRANSACTION_radioStateChanged:I = 0x4

.field static final TRANSACTION_rilConnected:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemIndication;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModemIndication;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/modem/IRadioModemIndication;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->rilConnected(I)V

    goto :goto_81

    :pswitch_3d  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->radioStateChanged(II)V

    goto :goto_81

    :pswitch_4c  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/modem/RadioCapability;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/modem/RadioCapability;)V

    goto :goto_81

    :pswitch_5f  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->modemReset(ILjava/lang/String;)V

    goto :goto_81

    :pswitch_6e  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/modem/HardwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/modem/HardwareConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->hardwareConfigChanged(I[Landroid/hardware/radio/modem/HardwareConfig;)V

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
        :pswitch_6e  #00000001
        :pswitch_5f  #00000002
        :pswitch_4c  #00000003
        :pswitch_3d  #00000004
        :pswitch_32  #00000005
    .end packed-switch
.end method
