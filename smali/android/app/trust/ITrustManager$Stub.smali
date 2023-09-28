# classes.dex

.class public abstract Landroid/app/trust/ITrustManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/trust/ITrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.trust.ITrustManager"

.field static final TRANSACTION_clearAllBiometricRecognized:I = 0xe

.field static final TRANSACTION_isDeviceLocked:I = 0xa

.field static final TRANSACTION_isDeviceSecure:I = 0xb

.field static final TRANSACTION_isTrustUsuallyManaged:I = 0xc

.field static final TRANSACTION_registerTrustListener:I = 0x6

.field static final TRANSACTION_reportEnabledTrustAgentsChanged:I = 0x5

.field static final TRANSACTION_reportKeyguardShowingChanged:I = 0x8

.field static final TRANSACTION_reportUnlockAttempt:I = 0x1

.field static final TRANSACTION_reportUnlockLockout:I = 0x4

.field static final TRANSACTION_reportUserMayRequestUnlock:I = 0x3

.field static final TRANSACTION_reportUserRequestedUnlock:I = 0x2

.field static final TRANSACTION_setDeviceLockedForUser:I = 0x9

.field static final TRANSACTION_unlockedByBiometricForUser:I = 0xd

.field static final TRANSACTION_unregisterTrustListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.trust.ITrustManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/trust/ITrustManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.trust.ITrustManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/trust/ITrustManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/trust/ITrustManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/trust/ITrustManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/trust/ITrustManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_3a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xe
    const-string v0, "clearAllBiometricRecognized"

    return-object v0

    :pswitch_8  #0xd
    const-string/jumbo v0, "unlockedByBiometricForUser"

    return-object v0

    :pswitch_c  #0xc
    const-string v0, "isTrustUsuallyManaged"

    return-object v0

    :pswitch_f  #0xb
    const-string v0, "isDeviceSecure"

    return-object v0

    :pswitch_12  #0xa
    const-string v0, "isDeviceLocked"

    return-object v0

    :pswitch_15  #0x9
    const-string/jumbo v0, "setDeviceLockedForUser"

    return-object v0

    :pswitch_19  #0x8
    const-string/jumbo v0, "reportKeyguardShowingChanged"

    return-object v0

    :pswitch_1d  #0x7
    const-string/jumbo v0, "unregisterTrustListener"

    return-object v0

    :pswitch_21  #0x6
    const-string/jumbo v0, "registerTrustListener"

    return-object v0

    :pswitch_25  #0x5
    const-string/jumbo v0, "reportEnabledTrustAgentsChanged"

    return-object v0

    :pswitch_29  #0x4
    const-string/jumbo v0, "reportUnlockLockout"

    return-object v0

    :pswitch_2d  #0x3
    const-string/jumbo v0, "reportUserMayRequestUnlock"

    return-object v0

    :pswitch_31  #0x2
    const-string/jumbo v0, "reportUserRequestedUnlock"

    return-object v0

    :pswitch_35  #0x1
    const-string/jumbo v0, "reportUnlockAttempt"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35  #00000001
        :pswitch_31  #00000002
        :pswitch_2d  #00000003
        :pswitch_29  #00000004
        :pswitch_25  #00000005
        :pswitch_21  #00000006
        :pswitch_1d  #00000007
        :pswitch_19  #00000008
        :pswitch_15  #00000009
        :pswitch_12  #0000000a
        :pswitch_f  #0000000b
        :pswitch_c  #0000000c
        :pswitch_8  #0000000d
        :pswitch_5  #0000000e
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xd

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.trust.ITrustManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_11e

    packed-switch p1, :pswitch_data_124

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xe
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11c

    :pswitch_33  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11c

    :pswitch_4a  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->isTrustUsuallyManaged(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_11c

    :pswitch_5d  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->isDeviceSecure(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_11c

    :pswitch_74  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->isDeviceLocked(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_11c

    :pswitch_8b  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->setDeviceLockedForUser(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11c

    :pswitch_9e  #0x8
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->reportKeyguardShowingChanged()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11c

    :pswitch_a6  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11c

    :pswitch_b8  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11c

    :pswitch_ca  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->reportEnabledTrustAgentsChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11c

    :pswitch_d8  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockLockout(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11c

    :pswitch_ea  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustManager$Stub;->reportUserMayRequestUnlock(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11c

    :pswitch_f8  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUserRequestedUnlock(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11c

    :pswitch_10a  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockAttempt(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_11c
    return v1

    nop

    :pswitch_data_11e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_10a  #00000001
        :pswitch_f8  #00000002
        :pswitch_ea  #00000003
        :pswitch_d8  #00000004
        :pswitch_ca  #00000005
        :pswitch_b8  #00000006
        :pswitch_a6  #00000007
        :pswitch_9e  #00000008
        :pswitch_8b  #00000009
        :pswitch_74  #0000000a
        :pswitch_5d  #0000000b
        :pswitch_4a  #0000000c
        :pswitch_33  #0000000d
        :pswitch_1c  #0000000e
    .end packed-switch
.end method
