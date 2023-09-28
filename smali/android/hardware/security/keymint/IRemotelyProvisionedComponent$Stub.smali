# classes2.dex

.class public abstract Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_generateCertificateRequest:I = 0x3

.field static final TRANSACTION_generateEcdsaP256KeyPair:I = 0x2

.field static final TRANSACTION_getHardwareInfo:I = 0x1

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v4, 0x1

    if-lt v0, v4, :cond_13

    const v5, 0xffffff

    if-gt v0, v5, :cond_13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    sparse-switch v0, :sswitch_data_aa

    packed-switch v0, :pswitch_data_b8

    move-object/from16 v6, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_20
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->getInterfaceVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :pswitch_3a  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    sget-object v6, Landroid/hardware/security/keymint/MacedPublicKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, [Landroid/hardware/security/keymint/MacedPublicKey;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    new-instance v6, Landroid/hardware/security/keymint/DeviceInfo;

    invoke-direct {v6}, Landroid/hardware/security/keymint/DeviceInfo;-><init>()V

    move-object v12, v6

    new-instance v6, Landroid/hardware/security/keymint/ProtectedData;

    invoke-direct {v6}, Landroid/hardware/security/keymint/ProtectedData;-><init>()V

    move-object v11, v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v6, p0

    move v7, v5

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v16, v11

    move-object v11, v12

    move-object v0, v12

    move-object/from16 v12, v16

    invoke-virtual/range {v6 .. v12}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->generateCertificateRequest(Z[Landroid/hardware/security/keymint/MacedPublicKey;[B[BLandroid/hardware/security/keymint/DeviceInfo;Landroid/hardware/security/keymint/ProtectedData;)[B

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v2, v0, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v7, v16

    invoke-virtual {v2, v7, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v6, p0

    goto :goto_a8

    :pswitch_7f  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    new-instance v5, Landroid/hardware/security/keymint/MacedPublicKey;

    invoke-direct {v5}, Landroid/hardware/security/keymint/MacedPublicKey;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v5}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->generateEcdsaP256KeyPair(ZLandroid/hardware/security/keymint/MacedPublicKey;)[B

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_a8

    :pswitch_9b  #0x1
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_a8
    return v4

    nop

    :sswitch_data_aa
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_9b  #00000001
        :pswitch_7f  #00000002
        :pswitch_3a  #00000003
    .end packed-switch
.end method
