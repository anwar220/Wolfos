# classes.dex

.class public abstract Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/biometrics/IBiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelAuthenticationFromService:I = 0x6

.field static final TRANSACTION_createTestSession:I = 0x1

.field static final TRANSACTION_dumpSensorServiceStateProto:I = 0x3

.field static final TRANSACTION_getAuthenticatorId:I = 0xb

.field static final TRANSACTION_getLockoutModeForUser:I = 0x9

.field static final TRANSACTION_getSensorProperties:I = 0x2

.field static final TRANSACTION_hasEnrolledTemplates:I = 0x8

.field static final TRANSACTION_invalidateAuthenticatorId:I = 0xa

.field static final TRANSACTION_isHardwareDetected:I = 0x7

.field static final TRANSACTION_prepareForAuthentication:I = 0x4

.field static final TRANSACTION_resetLockout:I = 0xc

.field static final TRANSACTION_startPreparedClient:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricAuthenticator;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricAuthenticator;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricAuthenticator;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xc
    const-string/jumbo v0, "resetLockout"

    return-object v0

    :pswitch_9  #0xb
    const-string v0, "getAuthenticatorId"

    return-object v0

    :pswitch_c  #0xa
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    :pswitch_f  #0x9
    const-string v0, "getLockoutModeForUser"

    return-object v0

    :pswitch_12  #0x8
    const-string v0, "hasEnrolledTemplates"

    return-object v0

    :pswitch_15  #0x7
    const-string v0, "isHardwareDetected"

    return-object v0

    :pswitch_18  #0x6
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    :pswitch_1b  #0x5
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    :pswitch_1f  #0x4
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    :pswitch_23  #0x3
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    :pswitch_26  #0x2
    const-string v0, "getSensorProperties"

    return-object v0

    :pswitch_29  #0x1
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_26  #00000002
        :pswitch_23  #00000003
        :pswitch_1f  #00000004
        :pswitch_1b  #00000005
        :pswitch_18  #00000006
        :pswitch_15  #00000007
        :pswitch_12  #00000008
        :pswitch_f  #00000009
        :pswitch_c  #0000000a
        :pswitch_9  #0000000b
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

    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p3

    const-string v15, "android.hardware.biometrics.IBiometricAuthenticator"

    const/4 v11, 0x1

    if-lt v13, v11, :cond_16

    const v0, 0xffffff

    if-gt v13, v0, :cond_16

    move-object/from16 v10, p2

    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    :cond_16
    move-object/from16 v10, p2

    :goto_18
    packed-switch v13, :pswitch_data_160

    packed-switch v13, :pswitch_data_166

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_27  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v11

    goto/16 :goto_15f

    :pswitch_43  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getAuthenticatorId(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v13, v11

    goto/16 :goto_15f

    :pswitch_57  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v11

    goto/16 :goto_15f

    :pswitch_6f  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getLockoutModeForUser(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v13, v11

    goto/16 :goto_15f

    :pswitch_83  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v13, v11

    goto/16 :goto_15f

    :pswitch_9b  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v13, v11

    goto/16 :goto_15f

    :pswitch_af  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v11

    goto/16 :goto_15f

    :pswitch_c7  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->startPreparedClient(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v11

    goto/16 :goto_15f

    :pswitch_d7  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-wide/from16 v8, v23

    move/from16 v10, v25

    move v13, v11

    move/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_15f

    :pswitch_11e  #0x3
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->dumpSensorServiceStateProto(Z)[B

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_15f

    :pswitch_131  #0x2
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_15f

    :pswitch_144  #0x1
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    nop

    :goto_15f
    return v13

    :pswitch_data_160
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_144  #00000001
        :pswitch_131  #00000002
        :pswitch_11e  #00000003
        :pswitch_d7  #00000004
        :pswitch_c7  #00000005
        :pswitch_af  #00000006
        :pswitch_9b  #00000007
        :pswitch_83  #00000008
        :pswitch_6f  #00000009
        :pswitch_57  #0000000a
        :pswitch_43  #0000000b
        :pswitch_27  #0000000c
    .end packed-switch
.end method
