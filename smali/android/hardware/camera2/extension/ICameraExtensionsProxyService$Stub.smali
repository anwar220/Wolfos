# classes.dex

.class public abstract Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_advancedExtensionsSupported:I = 0x3

.field static final TRANSACTION_initializeAdvancedExtension:I = 0x8

.field static final TRANSACTION_initializeImageExtension:I = 0x7

.field static final TRANSACTION_initializePreviewExtension:I = 0x6

.field static final TRANSACTION_initializeSession:I = 0x4

.field static final TRANSACTION_registerClient:I = 0x1

.field static final TRANSACTION_releaseSession:I = 0x5

.field static final TRANSACTION_unregisterClient:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_20

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x8
    const-string v0, "initializeAdvancedExtension"

    return-object v0

    :pswitch_8  #0x7
    const-string v0, "initializeImageExtension"

    return-object v0

    :pswitch_b  #0x6
    const-string v0, "initializePreviewExtension"

    return-object v0

    :pswitch_e  #0x5
    const-string/jumbo v0, "releaseSession"

    return-object v0

    :pswitch_12  #0x4
    const-string v0, "initializeSession"

    return-object v0

    :pswitch_15  #0x3
    const-string v0, "advancedExtensionsSupported"

    return-object v0

    :pswitch_18  #0x2
    const-string/jumbo v0, "unregisterClient"

    return-object v0

    :pswitch_1c  #0x1
    const-string/jumbo v0, "registerClient"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c  #00000001
        :pswitch_18  #00000002
        :pswitch_15  #00000003
        :pswitch_12  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_90

    packed-switch p1, :pswitch_data_96

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_8f

    :pswitch_2e  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_8f

    :pswitch_40  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_8f

    :pswitch_52  #0x5
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->releaseSession()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    :pswitch_59  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    :pswitch_6b  #0x3
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->advancedExtensionsSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_8f

    :pswitch_76  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->unregisterClient(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8f

    :pswitch_84  #0x1
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->registerClient()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    nop

    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_84  #00000001
        :pswitch_76  #00000002
        :pswitch_6b  #00000003
        :pswitch_59  #00000004
        :pswitch_52  #00000005
        :pswitch_40  #00000006
        :pswitch_2e  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method
