# classes.dex

.class public abstract Landroid/hardware/ISerialManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/ISerialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISerialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISerialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ISerialManager"

.field static final TRANSACTION_getSerialPorts:I = 0x1

.field static final TRANSACTION_openSerialPort:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.ISerialManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISerialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ISerialManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.ISerialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ISerialManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/ISerialManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/ISerialManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ISerialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x2
    const-string/jumbo v0, "openSerialPort"

    return-object v0

    :pswitch_9  #0x1
    const-string v0, "getSerialPorts"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method

.method private permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z
    .registers 6

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1, p2, p3, v1}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/ISerialManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.ISerialManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_72

    const-string v2, "Access denied, requires: android.Manifest.permission.SERIAL_PORT"

    const-string v3, "android.permission.SERIAL_PORT"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_78

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_1d  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_21  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingPid()I

    move-result v6

    new-instance v7, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8, v4, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v6, v7}, Landroid/hardware/ISerialManager$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v3

    if-ne v3, v1, :cond_46

    invoke-virtual {p0, v5}, Landroid/hardware/ISerialManager$Stub;->openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_6a

    :cond_46
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4c  #0x1
    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingPid()I

    move-result v5

    new-instance v6, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7, v4, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v5, v6}, Landroid/hardware/ISerialManager$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v3

    if-ne v3, v1, :cond_6b

    invoke-virtual {p0}, Landroid/hardware/ISerialManager$Stub;->getSerialPorts()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    nop

    :goto_6a
    return v1

    :cond_6b
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_72
    .packed-switch 0x5f4e5446
        :pswitch_1d  #5f4e5446
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_21  #00000002
    .end packed-switch
.end method
