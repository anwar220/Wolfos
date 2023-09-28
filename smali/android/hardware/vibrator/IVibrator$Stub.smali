# classes2.dex

.class public abstract Landroid/hardware/vibrator/IVibrator$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/vibrator/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_alwaysOnDisable:I = 0xf

.field static final TRANSACTION_alwaysOnEnable:I = 0xe

.field static final TRANSACTION_compose:I = 0xc

.field static final TRANSACTION_composePwle:I = 0x18

.field static final TRANSACTION_getBandwidthAmplitudeMap:I = 0x14

.field static final TRANSACTION_getCapabilities:I = 0x1

.field static final TRANSACTION_getCompositionDelayMax:I = 0x8

.field static final TRANSACTION_getCompositionSizeMax:I = 0x9

.field static final TRANSACTION_getFrequencyMinimum:I = 0x13

.field static final TRANSACTION_getFrequencyResolution:I = 0x12

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getPrimitiveDuration:I = 0xb

.field static final TRANSACTION_getPwleCompositionSizeMax:I = 0x16

.field static final TRANSACTION_getPwlePrimitiveDurationMax:I = 0x15

.field static final TRANSACTION_getQFactor:I = 0x11

.field static final TRANSACTION_getResonantFrequency:I = 0x10

.field static final TRANSACTION_getSupportedAlwaysOnEffects:I = 0xd

.field static final TRANSACTION_getSupportedBraking:I = 0x17

.field static final TRANSACTION_getSupportedEffects:I = 0x5

.field static final TRANSACTION_getSupportedPrimitives:I = 0xa

.field static final TRANSACTION_off:I = 0x2

.field static final TRANSACTION_on:I = 0x3

.field static final TRANSACTION_perform:I = 0x4

.field static final TRANSACTION_setAmplitude:I = 0x6

.field static final TRANSACTION_setExternalControl:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/vibrator/IVibrator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibrator;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/vibrator/IVibrator;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/vibrator/IVibrator;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_19e

    packed-switch p1, :pswitch_data_1ac

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x18
    sget-object v2, Landroid/hardware/vibrator/PrimitivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/vibrator/PrimitivePwle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->composePwle([Landroid/hardware/vibrator/PrimitivePwle;Landroid/hardware/vibrator/IVibratorCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_19d

    :pswitch_4d  #0x17
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedBraking()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_19d

    :pswitch_59  #0x16
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleCompositionSizeMax()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_19d

    :pswitch_65  #0x15
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwlePrimitiveDurationMax()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_19d

    :pswitch_71  #0x14
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getBandwidthAmplitudeMap()[F

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_19d

    :pswitch_7d  #0x13
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyMinimum()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_19d

    :pswitch_89  #0x12
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyResolution()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_19d

    :pswitch_95  #0x11
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getQFactor()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_19d

    :pswitch_a1  #0x10
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getResonantFrequency()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_19d

    :pswitch_ad  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibrator$Stub;->alwaysOnDisable(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_19d

    :pswitch_bc  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/vibrator/IVibrator$Stub;->alwaysOnEnable(IIB)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_19d

    :pswitch_d3  #0xd
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedAlwaysOnEffects()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_19d

    :pswitch_df  #0xc
    sget-object v2, Landroid/hardware/vibrator/CompositeEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/vibrator/CompositeEffect;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->compose([Landroid/hardware/vibrator/CompositeEffect;Landroid/hardware/vibrator/IVibratorCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_19d

    :pswitch_fa  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibrator$Stub;->getPrimitiveDuration(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_19d

    :pswitch_10d  #0xa
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedPrimitives()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_19d

    :pswitch_119  #0x9
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCompositionSizeMax()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_19d

    :pswitch_125  #0x8
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCompositionDelayMax()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19d

    :pswitch_130  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibrator$Stub;->setExternalControl(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_19d

    :pswitch_13e  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibrator$Stub;->setAmplitude(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_19d

    :pswitch_14c  #0x5
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedEffects()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_19d

    :pswitch_157  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/vibrator/IVibrator$Stub;->perform(IBLandroid/hardware/vibrator/IVibratorCallback;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19d

    :pswitch_175  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->on(ILandroid/hardware/vibrator/IVibratorCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_19d

    :pswitch_18b  #0x2
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->off()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_19d

    :pswitch_192  #0x1
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCapabilities()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_19d
    return v1

    :sswitch_data_19e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_192  #00000001
        :pswitch_18b  #00000002
        :pswitch_175  #00000003
        :pswitch_157  #00000004
        :pswitch_14c  #00000005
        :pswitch_13e  #00000006
        :pswitch_130  #00000007
        :pswitch_125  #00000008
        :pswitch_119  #00000009
        :pswitch_10d  #0000000a
        :pswitch_fa  #0000000b
        :pswitch_df  #0000000c
        :pswitch_d3  #0000000d
        :pswitch_bc  #0000000e
        :pswitch_ad  #0000000f
        :pswitch_a1  #00000010
        :pswitch_95  #00000011
        :pswitch_89  #00000012
        :pswitch_7d  #00000013
        :pswitch_71  #00000014
        :pswitch_65  #00000015
        :pswitch_59  #00000016
        :pswitch_4d  #00000017
        :pswitch_32  #00000018
    .end packed-switch
.end method
