# classes3.dex

.class public abstract Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/internal/ISuspendControlServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_enableAutosuspend:I = 0x1

.field static final TRANSACTION_forceSuspend:I = 0x2

.field static final TRANSACTION_getSuspendStats:I = 0x5

.field static final TRANSACTION_getWakeLockStats:I = 0x3

.field static final TRANSACTION_getWakeupStats:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    return-object v1

    :cond_14
    new-instance v1, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    :pswitch_1c  #0x5
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getSuspendStats()Landroid/system/suspend/internal/SuspendInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_57

    :pswitch_27  #0x4
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeupStats()[Landroid/system/suspend/internal/WakeupInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_57

    :pswitch_32  #0x3
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_57

    :pswitch_3d  #0x2
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->forceSuspend()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_57

    :pswitch_48  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->enableAutosuspend(Landroid/os/IBinder;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_57
    return v1

    :pswitch_data_58
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_3d  #00000002
        :pswitch_32  #00000003
        :pswitch_27  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method
