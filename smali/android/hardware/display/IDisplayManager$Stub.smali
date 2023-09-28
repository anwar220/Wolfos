# classes.dex

.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_areUserDisabledHdrTypesAllowed:I = 0x11

.field static final TRANSACTION_connectWifiDisplay:I = 0x8

.field static final TRANSACTION_createVirtualDisplay:I = 0x14

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x9

.field static final TRANSACTION_forgetWifiDisplay:I = 0xb

.field static final TRANSACTION_getAmbientBrightnessStats:I = 0x1b

.field static final TRANSACTION_getBrightness:I = 0x24

.field static final TRANSACTION_getBrightnessConfigurationForDisplay:I = 0x1e

.field static final TRANSACTION_getBrightnessConfigurationForUser:I = 0x1f

.field static final TRANSACTION_getBrightnessEvents:I = 0x1a

.field static final TRANSACTION_getBrightnessInfo:I = 0x27

.field static final TRANSACTION_getDefaultBrightnessConfiguration:I = 0x20

.field static final TRANSACTION_getDisplayDecorationSupport:I = 0x30

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getMinimumBrightnessCurve:I = 0x26

.field static final TRANSACTION_getPreferredWideGamutColorSpaceId:I = 0x28

.field static final TRANSACTION_getRefreshRateSwitchingType:I = 0x2f

.field static final TRANSACTION_getStableDisplaySize:I = 0x19

.field static final TRANSACTION_getSystemPreferredDisplayMode:I = 0x2b

.field static final TRANSACTION_getUserDisabledHdrTypes:I = 0x12

.field static final TRANSACTION_getUserPreferredDisplayMode:I = 0x2a

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xe

.field static final TRANSACTION_isMinimalPostProcessingRequested:I = 0x21

.field static final TRANSACTION_isUidPresentOnDisplay:I = 0x3

.field static final TRANSACTION_pauseWifiDisplay:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0x4

.field static final TRANSACTION_registerCallbackWithEventMask:I = 0x5

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x17

.field static final TRANSACTION_renameWifiDisplay:I = 0xa

.field static final TRANSACTION_requestColorMode:I = 0x13

.field static final TRANSACTION_resizeVirtualDisplay:I = 0x15

.field static final TRANSACTION_resumeWifiDisplay:I = 0xd

.field static final TRANSACTION_setAreUserDisabledHdrTypesAllowed:I = 0x10

.field static final TRANSACTION_setBrightness:I = 0x23

.field static final TRANSACTION_setBrightnessConfigurationForDisplay:I = 0x1d

.field static final TRANSACTION_setBrightnessConfigurationForUser:I = 0x1c

.field static final TRANSACTION_setLimitedFrameRate:I = 0x31

.field static final TRANSACTION_setRefreshRateSwitchingType:I = 0x2e

.field static final TRANSACTION_setShouldAlwaysRespectAppRequestedMode:I = 0x2c

.field static final TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x25

.field static final TRANSACTION_setTemporaryBrightness:I = 0x22

.field static final TRANSACTION_setUserDisabledHdrTypes:I = 0xf

.field static final TRANSACTION_setUserPreferredDisplayMode:I = 0x29

.field static final TRANSACTION_setVirtualDisplayState:I = 0x18

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0x16

.field static final TRANSACTION_shouldAlwaysRespectAppRequestedMode:I = 0x2d

.field static final TRANSACTION_startWifiDisplayScan:I = 0x6

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_b0

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x31
    const-string/jumbo v0, "setLimitedFrameRate"

    return-object v0

    :pswitch_9  #0x30
    const-string v0, "getDisplayDecorationSupport"

    return-object v0

    :pswitch_c  #0x2f
    const-string v0, "getRefreshRateSwitchingType"

    return-object v0

    :pswitch_f  #0x2e
    const-string/jumbo v0, "setRefreshRateSwitchingType"

    return-object v0

    :pswitch_13  #0x2d
    const-string/jumbo v0, "shouldAlwaysRespectAppRequestedMode"

    return-object v0

    :pswitch_17  #0x2c
    const-string/jumbo v0, "setShouldAlwaysRespectAppRequestedMode"

    return-object v0

    :pswitch_1b  #0x2b
    const-string v0, "getSystemPreferredDisplayMode"

    return-object v0

    :pswitch_1e  #0x2a
    const-string v0, "getUserPreferredDisplayMode"

    return-object v0

    :pswitch_21  #0x29
    const-string/jumbo v0, "setUserPreferredDisplayMode"

    return-object v0

    :pswitch_25  #0x28
    const-string v0, "getPreferredWideGamutColorSpaceId"

    return-object v0

    :pswitch_28  #0x27
    const-string v0, "getBrightnessInfo"

    return-object v0

    :pswitch_2b  #0x26
    const-string v0, "getMinimumBrightnessCurve"

    return-object v0

    :pswitch_2e  #0x25
    const-string/jumbo v0, "setTemporaryAutoBrightnessAdjustment"

    return-object v0

    :pswitch_32  #0x24
    const-string v0, "getBrightness"

    return-object v0

    :pswitch_35  #0x23
    const-string/jumbo v0, "setBrightness"

    return-object v0

    :pswitch_39  #0x22
    const-string/jumbo v0, "setTemporaryBrightness"

    return-object v0

    :pswitch_3d  #0x21
    const-string v0, "isMinimalPostProcessingRequested"

    return-object v0

    :pswitch_40  #0x20
    const-string v0, "getDefaultBrightnessConfiguration"

    return-object v0

    :pswitch_43  #0x1f
    const-string v0, "getBrightnessConfigurationForUser"

    return-object v0

    :pswitch_46  #0x1e
    const-string v0, "getBrightnessConfigurationForDisplay"

    return-object v0

    :pswitch_49  #0x1d
    const-string/jumbo v0, "setBrightnessConfigurationForDisplay"

    return-object v0

    :pswitch_4d  #0x1c
    const-string/jumbo v0, "setBrightnessConfigurationForUser"

    return-object v0

    :pswitch_51  #0x1b
    const-string v0, "getAmbientBrightnessStats"

    return-object v0

    :pswitch_54  #0x1a
    const-string v0, "getBrightnessEvents"

    return-object v0

    :pswitch_57  #0x19
    const-string v0, "getStableDisplaySize"

    return-object v0

    :pswitch_5a  #0x18
    const-string/jumbo v0, "setVirtualDisplayState"

    return-object v0

    :pswitch_5e  #0x17
    const-string/jumbo v0, "releaseVirtualDisplay"

    return-object v0

    :pswitch_62  #0x16
    const-string/jumbo v0, "setVirtualDisplaySurface"

    return-object v0

    :pswitch_66  #0x15
    const-string/jumbo v0, "resizeVirtualDisplay"

    return-object v0

    :pswitch_6a  #0x14
    const-string v0, "createVirtualDisplay"

    return-object v0

    :pswitch_6d  #0x13
    const-string/jumbo v0, "requestColorMode"

    return-object v0

    :pswitch_71  #0x12
    const-string v0, "getUserDisabledHdrTypes"

    return-object v0

    :pswitch_74  #0x11
    const-string v0, "areUserDisabledHdrTypesAllowed"

    return-object v0

    :pswitch_77  #0x10
    const-string/jumbo v0, "setAreUserDisabledHdrTypesAllowed"

    return-object v0

    :pswitch_7b  #0xf
    const-string/jumbo v0, "setUserDisabledHdrTypes"

    return-object v0

    :pswitch_7f  #0xe
    const-string v0, "getWifiDisplayStatus"

    return-object v0

    :pswitch_82  #0xd
    const-string/jumbo v0, "resumeWifiDisplay"

    return-object v0

    :pswitch_86  #0xc
    const-string/jumbo v0, "pauseWifiDisplay"

    return-object v0

    :pswitch_8a  #0xb
    const-string v0, "forgetWifiDisplay"

    return-object v0

    :pswitch_8d  #0xa
    const-string/jumbo v0, "renameWifiDisplay"

    return-object v0

    :pswitch_91  #0x9
    const-string v0, "disconnectWifiDisplay"

    return-object v0

    :pswitch_94  #0x8
    const-string v0, "connectWifiDisplay"

    return-object v0

    :pswitch_97  #0x7
    const-string/jumbo v0, "stopWifiDisplayScan"

    return-object v0

    :pswitch_9b  #0x6
    const-string/jumbo v0, "startWifiDisplayScan"

    return-object v0

    :pswitch_9f  #0x5
    const-string/jumbo v0, "registerCallbackWithEventMask"

    return-object v0

    :pswitch_a3  #0x4
    const-string/jumbo v0, "registerCallback"

    return-object v0

    :pswitch_a7  #0x3
    const-string v0, "isUidPresentOnDisplay"

    return-object v0

    :pswitch_aa  #0x2
    const-string v0, "getDisplayIds"

    return-object v0

    :pswitch_ad  #0x1
    const-string v0, "getDisplayInfo"

    return-object v0

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_ad  #00000001
        :pswitch_aa  #00000002
        :pswitch_a7  #00000003
        :pswitch_a3  #00000004
        :pswitch_9f  #00000005
        :pswitch_9b  #00000006
        :pswitch_97  #00000007
        :pswitch_94  #00000008
        :pswitch_91  #00000009
        :pswitch_8d  #0000000a
        :pswitch_8a  #0000000b
        :pswitch_86  #0000000c
        :pswitch_82  #0000000d
        :pswitch_7f  #0000000e
        :pswitch_7b  #0000000f
        :pswitch_77  #00000010
        :pswitch_74  #00000011
        :pswitch_71  #00000012
        :pswitch_6d  #00000013
        :pswitch_6a  #00000014
        :pswitch_66  #00000015
        :pswitch_62  #00000016
        :pswitch_5e  #00000017
        :pswitch_5a  #00000018
        :pswitch_57  #00000019
        :pswitch_54  #0000001a
        :pswitch_51  #0000001b
        :pswitch_4d  #0000001c
        :pswitch_49  #0000001d
        :pswitch_46  #0000001e
        :pswitch_43  #0000001f
        :pswitch_40  #00000020
        :pswitch_3d  #00000021
        :pswitch_39  #00000022
        :pswitch_35  #00000023
        :pswitch_32  #00000024
        :pswitch_2e  #00000025
        :pswitch_2b  #00000026
        :pswitch_28  #00000027
        :pswitch_25  #00000028
        :pswitch_21  #00000029
        :pswitch_1e  #0000002a
        :pswitch_1b  #0000002b
        :pswitch_17  #0000002c
        :pswitch_13  #0000002d
        :pswitch_f  #0000002e
        :pswitch_c  #0000002f
        :pswitch_9  #00000030
        :pswitch_5  #00000031
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x30

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.display.IDisplayManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_378

    packed-switch p1, :pswitch_data_37e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setLimitedFrameRate(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_33  #0x30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_46  #0x2f
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getRefreshRateSwitchingType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_376

    :pswitch_52  #0x2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_61  #0x2d
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_376

    :pswitch_6d  #0x2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_7c  #0x2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_8f  #0x2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_a2  #0x29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_b9  #0x28
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPreferredWideGamutColorSpaceId()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_376

    :pswitch_c5  #0x27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_d8  #0x26
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_e4  #0x25
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_f3  #0x24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightness(I)F

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_376

    :pswitch_106  #0x23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness(IF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_119  #0x22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(IF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_12c  #0x21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->isMinimalPostProcessingRequested(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_376

    :pswitch_13f  #0x20
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_14b  #0x1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_15e  #0x1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_175  #0x1d
    sget-object v2, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_194  #0x1c
    sget-object v2, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_1af  #0x1b
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_1bb  #0x1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_1ce  #0x19
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_1da  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_1f1  #0x17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_204  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_21f  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_23e  #0x14
    sget-object v2, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/VirtualDisplayConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_376

    :pswitch_269  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_27c  #0x12
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserDisabledHdrTypes()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_376

    :pswitch_288  #0x11
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->areUserDisabledHdrTypesAllowed()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_376

    :pswitch_294  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_2a3  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_2b2  #0xe
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_376

    :pswitch_2be  #0xd
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_2c6  #0xc
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_2ce  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_2dd  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_2f0  #0x9
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_376

    :pswitch_2f8  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_376

    :pswitch_306  #0x7
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_376

    :pswitch_30d  #0x6
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_376

    :pswitch_314  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_376

    :pswitch_32a  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_376

    :pswitch_33c  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->isUidPresentOnDisplay(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_376

    :pswitch_352  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds(Z)[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_376

    :pswitch_364  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_376
    return v1

    nop

    :pswitch_data_378
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_37e
    .packed-switch 0x1
        :pswitch_364  #00000001
        :pswitch_352  #00000002
        :pswitch_33c  #00000003
        :pswitch_32a  #00000004
        :pswitch_314  #00000005
        :pswitch_30d  #00000006
        :pswitch_306  #00000007
        :pswitch_2f8  #00000008
        :pswitch_2f0  #00000009
        :pswitch_2dd  #0000000a
        :pswitch_2ce  #0000000b
        :pswitch_2c6  #0000000c
        :pswitch_2be  #0000000d
        :pswitch_2b2  #0000000e
        :pswitch_2a3  #0000000f
        :pswitch_294  #00000010
        :pswitch_288  #00000011
        :pswitch_27c  #00000012
        :pswitch_269  #00000013
        :pswitch_23e  #00000014
        :pswitch_21f  #00000015
        :pswitch_204  #00000016
        :pswitch_1f1  #00000017
        :pswitch_1da  #00000018
        :pswitch_1ce  #00000019
        :pswitch_1bb  #0000001a
        :pswitch_1af  #0000001b
        :pswitch_194  #0000001c
        :pswitch_175  #0000001d
        :pswitch_15e  #0000001e
        :pswitch_14b  #0000001f
        :pswitch_13f  #00000020
        :pswitch_12c  #00000021
        :pswitch_119  #00000022
        :pswitch_106  #00000023
        :pswitch_f3  #00000024
        :pswitch_e4  #00000025
        :pswitch_d8  #00000026
        :pswitch_c5  #00000027
        :pswitch_b9  #00000028
        :pswitch_a2  #00000029
        :pswitch_8f  #0000002a
        :pswitch_7c  #0000002b
        :pswitch_6d  #0000002c
        :pswitch_61  #0000002d
        :pswitch_52  #0000002e
        :pswitch_46  #0000002f
        :pswitch_33  #00000030
        :pswitch_1c  #00000031
    .end packed-switch
.end method
