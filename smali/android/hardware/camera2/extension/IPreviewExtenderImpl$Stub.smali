# classes.dex

.class public abstract Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/camera2/extension/IPreviewExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCaptureStage:I = 0x8

.field static final TRANSACTION_getPreviewImageProcessor:I = 0xa

.field static final TRANSACTION_getProcessorType:I = 0x9

.field static final TRANSACTION_getRequestUpdateProcessor:I = 0xb

.field static final TRANSACTION_getSupportedResolutions:I = 0xc

.field static final TRANSACTION_init:I = 0x6

.field static final TRANSACTION_isExtensionAvailable:I = 0x7

.field static final TRANSACTION_onDeInit:I = 0x2

.field static final TRANSACTION_onDisableSession:I = 0x5

.field static final TRANSACTION_onEnableSession:I = 0x4

.field static final TRANSACTION_onInit:I = 0x1

.field static final TRANSACTION_onPresetSession:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xc
    const-string v0, "getSupportedResolutions"

    return-object v0

    :pswitch_8  #0xb
    const-string v0, "getRequestUpdateProcessor"

    return-object v0

    :pswitch_b  #0xa
    const-string v0, "getPreviewImageProcessor"

    return-object v0

    :pswitch_e  #0x9
    const-string v0, "getProcessorType"

    return-object v0

    :pswitch_11  #0x8
    const-string v0, "getCaptureStage"

    return-object v0

    :pswitch_14  #0x7
    const-string v0, "isExtensionAvailable"

    return-object v0

    :pswitch_17  #0x6
    const-string v0, "init"

    return-object v0

    :pswitch_1a  #0x5
    const-string/jumbo v0, "onDisableSession"

    return-object v0

    :pswitch_1e  #0x4
    const-string/jumbo v0, "onEnableSession"

    return-object v0

    :pswitch_22  #0x3
    const-string/jumbo v0, "onPresetSession"

    return-object v0

    :pswitch_26  #0x2
    const-string/jumbo v0, "onDeInit"

    return-object v0

    :pswitch_2a  #0x1
    const-string/jumbo v0, "onInit"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_26  #00000002
        :pswitch_22  #00000003
        :pswitch_1e  #00000004
        :pswitch_1a  #00000005
        :pswitch_17  #00000006
        :pswitch_14  #00000007
        :pswitch_11  #00000008
        :pswitch_e  #00000009
        :pswitch_b  #0000000a
        :pswitch_8  #0000000b
        :pswitch_5  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_c6

    packed-switch p1, :pswitch_data_cc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xc
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getSupportedResolutions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_c5

    :pswitch_28  #0xb
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getRequestUpdateProcessor()Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_c5

    :pswitch_34  #0xa
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getPreviewImageProcessor()Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_c5

    :pswitch_40  #0x9
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getProcessorType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c5

    :pswitch_4c  #0x8
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_c5

    :pswitch_57  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_c5

    :pswitch_71  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c5

    :pswitch_87  #0x5
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_c5

    :pswitch_92  #0x4
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_c5

    :pswitch_9d  #0x3
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_c5

    :pswitch_a8  #0x2
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onDeInit()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c5

    :pswitch_af  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_af  #00000001
        :pswitch_a8  #00000002
        :pswitch_9d  #00000003
        :pswitch_92  #00000004
        :pswitch_87  #00000005
        :pswitch_71  #00000006
        :pswitch_57  #00000007
        :pswitch_4c  #00000008
        :pswitch_40  #00000009
        :pswitch_34  #0000000a
        :pswitch_28  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method
