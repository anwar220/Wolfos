# classes.dex

.class public abstract Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortCaptures:I = 0x5

.field static final TRANSACTION_setImageProcessor:I = 0x1

.field static final TRANSACTION_setRepeating:I = 0x4

.field static final TRANSACTION_stopRepeating:I = 0x6

.field static final TRANSACTION_submit:I = 0x2

.field static final TRANSACTION_submitBurst:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string/jumbo v0, "stopRepeating"

    return-object v0

    :pswitch_9  #0x5
    const-string v0, "abortCaptures"

    return-object v0

    :pswitch_c  #0x4
    const-string/jumbo v0, "setRepeating"

    return-object v0

    :pswitch_10  #0x3
    const-string/jumbo v0, "submitBurst"

    return-object v0

    :pswitch_14  #0x2
    const-string/jumbo v0, "submit"

    return-object v0

    :pswitch_18  #0x1
    const-string/jumbo v0, "setImageProcessor"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_14  #00000002
        :pswitch_10  #00000003
        :pswitch_c  #00000004
        :pswitch_9  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.hardware.camera2.extension.IRequestProcessorImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_9e

    packed-switch p1, :pswitch_data_a4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x6
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->stopRepeating()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9d

    :pswitch_24  #0x5
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->abortCaptures()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9d

    :pswitch_2b  #0x4
    sget-object v2, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Request;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9d

    :pswitch_49  #0x3
    sget-object v2, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9d

    :pswitch_65  #0x2
    sget-object v2, Landroid/hardware/camera2/extension/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Request;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9d

    :pswitch_83  #0x1
    sget-object v2, Landroid/hardware/camera2/extension/OutputConfigId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/extension/IImageProcessorImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IImageProcessorImpl;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->setImageProcessor(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/IImageProcessorImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_9d
    return v1

    :pswitch_data_9e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_83  #00000001
        :pswitch_65  #00000002
        :pswitch_49  #00000003
        :pswitch_2b  #00000004
        :pswitch_24  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
