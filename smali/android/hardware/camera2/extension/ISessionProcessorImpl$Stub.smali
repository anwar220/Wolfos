# classes.dex

.class public abstract Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/camera2/extension/ISessionProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ISessionProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deInitSession:I = 0x2

.field static final TRANSACTION_initSession:I = 0x1

.field static final TRANSACTION_onCaptureSessionEnd:I = 0x4

.field static final TRANSACTION_onCaptureSessionStart:I = 0x3

.field static final TRANSACTION_setParameters:I = 0x8

.field static final TRANSACTION_startCapture:I = 0x7

.field static final TRANSACTION_startRepeating:I = 0x5

.field static final TRANSACTION_startTrigger:I = 0x9

.field static final TRANSACTION_stopRepeating:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_28

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x9
    const-string/jumbo v0, "startTrigger"

    return-object v0

    :pswitch_9  #0x8
    const-string/jumbo v0, "setParameters"

    return-object v0

    :pswitch_d  #0x7
    const-string/jumbo v0, "startCapture"

    return-object v0

    :pswitch_11  #0x6
    const-string/jumbo v0, "stopRepeating"

    return-object v0

    :pswitch_15  #0x5
    const-string/jumbo v0, "startRepeating"

    return-object v0

    :pswitch_19  #0x4
    const-string/jumbo v0, "onCaptureSessionEnd"

    return-object v0

    :pswitch_1d  #0x3
    const-string/jumbo v0, "onCaptureSessionStart"

    return-object v0

    :pswitch_21  #0x2
    const-string v0, "deInitSession"

    return-object v0

    :pswitch_24  #0x1
    const-string v0, "initSession"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_21  #00000002
        :pswitch_1d  #00000003
        :pswitch_19  #00000004
        :pswitch_15  #00000005
        :pswitch_11  #00000006
        :pswitch_d  #00000007
        :pswitch_9  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_c4

    packed-switch p1, :pswitch_data_ca

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x9
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c3

    :pswitch_3b  #0x8
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c3

    :pswitch_4e  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c3

    :pswitch_64  #0x6
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->stopRepeating()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c3

    :pswitch_6b  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c3

    :pswitch_81  #0x4
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->onCaptureSessionEnd()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c3

    :pswitch_88  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c3

    :pswitch_9a  #0x2
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->deInitSession()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c3

    :pswitch_a1  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/OutputSurface;

    sget-object v4, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/OutputSurface;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->initSession(Ljava/lang/String;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_c3
    return v1

    :pswitch_data_c4
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_a1  #00000001
        :pswitch_9a  #00000002
        :pswitch_88  #00000003
        :pswitch_81  #00000004
        :pswitch_6b  #00000005
        :pswitch_64  #00000006
        :pswitch_4e  #00000007
        :pswitch_3b  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method
