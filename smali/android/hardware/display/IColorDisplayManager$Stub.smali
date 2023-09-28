# classes.dex

.class public abstract Landroid/hardware/display/IColorDisplayManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/display/IColorDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IColorDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getColorMode:I = 0x11

.field static final TRANSACTION_getNightDisplayAutoMode:I = 0xa

.field static final TRANSACTION_getNightDisplayAutoModeRaw:I = 0xb

.field static final TRANSACTION_getNightDisplayColorTemperature:I = 0x8

.field static final TRANSACTION_getNightDisplayCustomEndTime:I = 0xf

.field static final TRANSACTION_getNightDisplayCustomStartTime:I = 0xd

.field static final TRANSACTION_getReduceBrightColorsOffsetFactor:I = 0x19

.field static final TRANSACTION_getReduceBrightColorsStrength:I = 0x17

.field static final TRANSACTION_getTransformCapabilities:I = 0x5

.field static final TRANSACTION_isDeviceColorManaged:I = 0x1

.field static final TRANSACTION_isDisplayWhiteBalanceEnabled:I = 0x13

.field static final TRANSACTION_isNightDisplayActivated:I = 0x6

.field static final TRANSACTION_isReduceBrightColorsActivated:I = 0x15

.field static final TRANSACTION_isSaturationActivated:I = 0x4

.field static final TRANSACTION_setAppSaturationLevel:I = 0x3

.field static final TRANSACTION_setColorMode:I = 0x12

.field static final TRANSACTION_setDisplayWhiteBalanceEnabled:I = 0x14

.field static final TRANSACTION_setNightDisplayActivated:I = 0x7

.field static final TRANSACTION_setNightDisplayAutoMode:I = 0xc

.field static final TRANSACTION_setNightDisplayColorTemperature:I = 0x9

.field static final TRANSACTION_setNightDisplayCustomEndTime:I = 0x10

.field static final TRANSACTION_setNightDisplayCustomStartTime:I = 0xe

.field static final TRANSACTION_setReduceBrightColorsActivated:I = 0x16

.field static final TRANSACTION_setReduceBrightColorsStrength:I = 0x18

.field static final TRANSACTION_setSaturationLevel:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IColorDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorDisplayManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IColorDisplayManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IColorDisplayManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_5c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x19
    const-string v0, "getReduceBrightColorsOffsetFactor"

    return-object v0

    :pswitch_8  #0x18
    const-string/jumbo v0, "setReduceBrightColorsStrength"

    return-object v0

    :pswitch_c  #0x17
    const-string v0, "getReduceBrightColorsStrength"

    return-object v0

    :pswitch_f  #0x16
    const-string/jumbo v0, "setReduceBrightColorsActivated"

    return-object v0

    :pswitch_13  #0x15
    const-string v0, "isReduceBrightColorsActivated"

    return-object v0

    :pswitch_16  #0x14
    const-string/jumbo v0, "setDisplayWhiteBalanceEnabled"

    return-object v0

    :pswitch_1a  #0x13
    const-string v0, "isDisplayWhiteBalanceEnabled"

    return-object v0

    :pswitch_1d  #0x12
    const-string/jumbo v0, "setColorMode"

    return-object v0

    :pswitch_21  #0x11
    const-string v0, "getColorMode"

    return-object v0

    :pswitch_24  #0x10
    const-string/jumbo v0, "setNightDisplayCustomEndTime"

    return-object v0

    :pswitch_28  #0xf
    const-string v0, "getNightDisplayCustomEndTime"

    return-object v0

    :pswitch_2b  #0xe
    const-string/jumbo v0, "setNightDisplayCustomStartTime"

    return-object v0

    :pswitch_2f  #0xd
    const-string v0, "getNightDisplayCustomStartTime"

    return-object v0

    :pswitch_32  #0xc
    const-string/jumbo v0, "setNightDisplayAutoMode"

    return-object v0

    :pswitch_36  #0xb
    const-string v0, "getNightDisplayAutoModeRaw"

    return-object v0

    :pswitch_39  #0xa
    const-string v0, "getNightDisplayAutoMode"

    return-object v0

    :pswitch_3c  #0x9
    const-string/jumbo v0, "setNightDisplayColorTemperature"

    return-object v0

    :pswitch_40  #0x8
    const-string v0, "getNightDisplayColorTemperature"

    return-object v0

    :pswitch_43  #0x7
    const-string/jumbo v0, "setNightDisplayActivated"

    return-object v0

    :pswitch_47  #0x6
    const-string v0, "isNightDisplayActivated"

    return-object v0

    :pswitch_4a  #0x5
    const-string v0, "getTransformCapabilities"

    return-object v0

    :pswitch_4d  #0x4
    const-string v0, "isSaturationActivated"

    return-object v0

    :pswitch_50  #0x3
    const-string/jumbo v0, "setAppSaturationLevel"

    return-object v0

    :pswitch_54  #0x2
    const-string/jumbo v0, "setSaturationLevel"

    return-object v0

    :pswitch_58  #0x1
    const-string v0, "isDeviceColorManaged"

    return-object v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_58  #00000001
        :pswitch_54  #00000002
        :pswitch_50  #00000003
        :pswitch_4d  #00000004
        :pswitch_4a  #00000005
        :pswitch_47  #00000006
        :pswitch_43  #00000007
        :pswitch_40  #00000008
        :pswitch_3c  #00000009
        :pswitch_39  #0000000a
        :pswitch_36  #0000000b
        :pswitch_32  #0000000c
        :pswitch_2f  #0000000d
        :pswitch_2b  #0000000e
        :pswitch_28  #0000000f
        :pswitch_24  #00000010
        :pswitch_21  #00000011
        :pswitch_1d  #00000012
        :pswitch_1a  #00000013
        :pswitch_16  #00000014
        :pswitch_13  #00000015
        :pswitch_f  #00000016
        :pswitch_c  #00000017
        :pswitch_8  #00000018
        :pswitch_5  #00000019
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/display/IColorDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.display.IColorDisplayManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_196

    packed-switch p1, :pswitch_data_19c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x19
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsOffsetFactor()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_195

    :pswitch_28  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsStrength(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_3b  #0x17
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsStrength()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_195

    :pswitch_47  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsActivated(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_5a  #0x15
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isReduceBrightColorsActivated()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_66  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_79  #0x13
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDisplayWhiteBalanceEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_85  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setColorMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_195

    :pswitch_94  #0x11
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getColorMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_195

    :pswitch_a0  #0x10
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_b7  #0xf
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_195

    :pswitch_c3  #0xe
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_da  #0xd
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_195

    :pswitch_e6  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayAutoMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_f9  #0xb
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoModeRaw()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_195

    :pswitch_105  #0xa
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_195

    :pswitch_111  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayColorTemperature(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_195

    :pswitch_124  #0x8
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayColorTemperature()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_195

    :pswitch_12f  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayActivated(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_195

    :pswitch_141  #0x6
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isNightDisplayActivated()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_195

    :pswitch_14c  #0x5
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getTransformCapabilities()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_195

    :pswitch_157  #0x4
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isSaturationActivated()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_195

    :pswitch_162  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IColorDisplayManager$Stub;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_195

    :pswitch_178  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setSaturationLevel(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_195

    :pswitch_18a  #0x1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDeviceColorManaged()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_195
    return v1

    :pswitch_data_196
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_18a  #00000001
        :pswitch_178  #00000002
        :pswitch_162  #00000003
        :pswitch_157  #00000004
        :pswitch_14c  #00000005
        :pswitch_141  #00000006
        :pswitch_12f  #00000007
        :pswitch_124  #00000008
        :pswitch_111  #00000009
        :pswitch_105  #0000000a
        :pswitch_f9  #0000000b
        :pswitch_e6  #0000000c
        :pswitch_da  #0000000d
        :pswitch_c3  #0000000e
        :pswitch_b7  #0000000f
        :pswitch_a0  #00000010
        :pswitch_94  #00000011
        :pswitch_85  #00000012
        :pswitch_79  #00000013
        :pswitch_66  #00000014
        :pswitch_5a  #00000015
        :pswitch_47  #00000016
        :pswitch_3b  #00000017
        :pswitch_28  #00000018
        :pswitch_1c  #00000019
    .end packed-switch
.end method
