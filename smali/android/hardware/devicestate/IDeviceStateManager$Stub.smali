# classes.dex

.class public abstract Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/IDeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelStateRequest:I = 0x4

.field static final TRANSACTION_getDeviceStateInfo:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_requestState:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/devicestate/IDeviceStateManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/devicestate/IDeviceStateManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string v0, "cancelStateRequest"

    return-object v0

    :pswitch_8  #0x3
    const-string/jumbo v0, "requestState"

    return-object v0

    :pswitch_c  #0x2
    const-string/jumbo v0, "registerCallback"

    return-object v0

    :pswitch_10  #0x1
    const-string v0, "getDeviceStateInfo"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10  #00000001
        :pswitch_c  #00000002
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

    invoke-static {p1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_58

    packed-switch p1, :pswitch_data_5e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x4
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->cancelStateRequest()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_56

    :pswitch_23  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->requestState(Landroid/os/IBinder;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_56

    :pswitch_39  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_56

    :pswitch_4b  #0x1
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_39  #00000002
        :pswitch_23  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method
