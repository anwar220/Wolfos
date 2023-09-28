# classes.dex

.class public abstract Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onImageFormatUpdate:I = 0x3

.field static final TRANSACTION_onOutputSurface:I = 0x1

.field static final TRANSACTION_onResolutionUpdate:I = 0x2

.field static final TRANSACTION_process:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.camera2.extension.IPreviewImageProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.camera2.extension.IPreviewImageProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_16

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string/jumbo v0, "process"

    return-object v0

    :pswitch_9  #0x3
    const-string/jumbo v0, "onImageFormatUpdate"

    return-object v0

    :pswitch_d  #0x2
    const-string/jumbo v0, "onResolutionUpdate"

    return-object v0

    :pswitch_11  #0x1
    const-string/jumbo v0, "onOutputSurface"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_d  #00000002
        :pswitch_9  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.camera2.extension.IPreviewImageProcessorImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_7a

    packed-switch p1, :pswitch_data_80

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x4
    sget-object v2, Landroid/hardware/camera2/extension/ParcelImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/ParcelImage;

    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/camera2/extension/IProcessResultImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IProcessResultImpl;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub;->process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/impl/CameraMetadataNative;ILandroid/hardware/camera2/extension/IProcessResultImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_78

    :pswitch_42  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub;->onImageFormatUpdate(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_78

    :pswitch_50  #0x2
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_78

    :pswitch_62  #0x1
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub;->onOutputSurface(Landroid/view/Surface;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_78
    return v1

    nop

    :pswitch_data_7a
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_62  #00000001
        :pswitch_50  #00000002
        :pswitch_42  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method
