# classes3.dex

.class public abstract Landroid/view/IScrollCaptureConnection$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/view/IScrollCaptureConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IScrollCaptureConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x4

.field static final TRANSACTION_endCapture:I = 0x3

.field static final TRANSACTION_requestImage:I = 0x2

.field static final TRANSACTION_startCapture:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IScrollCaptureConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/IScrollCaptureConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureConnection;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IScrollCaptureConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IScrollCaptureConnection;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IScrollCaptureConnection;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IScrollCaptureConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IScrollCaptureConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string v0, "close"

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "endCapture"

    return-object v0

    :pswitch_b  #0x2
    const-string/jumbo v0, "requestImage"

    return-object v0

    :pswitch_f  #0x1
    const-string/jumbo v0, "startCapture"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
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

    invoke-static {p1}, Landroid/view/IScrollCaptureConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.view.IScrollCaptureConnection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_60

    packed-switch p1, :pswitch_data_66

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x4
    invoke-virtual {p0}, Landroid/view/IScrollCaptureConnection$Stub;->close()V

    goto :goto_5f

    :pswitch_20  #0x3
    invoke-virtual {p0}, Landroid/view/IScrollCaptureConnection$Stub;->endCapture()Landroid/os/ICancellationSignal;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_5f

    :pswitch_2b  #0x2
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IScrollCaptureConnection$Stub;->requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_5f

    :pswitch_41  #0x1
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IScrollCaptureCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureCallbacks;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IScrollCaptureConnection$Stub;->startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    nop

    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_41  #00000001
        :pswitch_2b  #00000002
        :pswitch_20  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method
