# classes3.dex

.class public abstract Landroid/security/identity/ICredential$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/security/identity/ICredential;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ICredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredential$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createEphemeralKeyPair:I = 0x1

.field static final TRANSACTION_deleteCredential:I = 0x3

.field static final TRANSACTION_deleteWithChallenge:I = 0x4

.field static final TRANSACTION_getAuthKeysNeedingCertification:I = 0xa

.field static final TRANSACTION_getAuthenticationDataUsageCount:I = 0xd

.field static final TRANSACTION_getCredentialKeyCertificateChain:I = 0x6

.field static final TRANSACTION_getEntries:I = 0x8

.field static final TRANSACTION_proveOwnership:I = 0x5

.field static final TRANSACTION_selectAuthKey:I = 0x7

.field static final TRANSACTION_setAvailableAuthenticationKeys:I = 0x9

.field static final TRANSACTION_setReaderEphemeralPublicKey:I = 0x2

.field static final TRANSACTION_storeStaticAuthenticationData:I = 0xb

.field static final TRANSACTION_storeStaticAuthenticationDataWithExpiration:I = 0xc

.field static final TRANSACTION_update:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.security.identity.ICredential"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/ICredential$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredential;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.security.identity.ICredential"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/identity/ICredential;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/security/identity/ICredential;

    return-object v1

    :cond_14
    new-instance v1, Landroid/security/identity/ICredential$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/identity/ICredential$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xe
    const-string/jumbo v0, "update"

    return-object v0

    :pswitch_9  #0xd
    const-string v0, "getAuthenticationDataUsageCount"

    return-object v0

    :pswitch_c  #0xc
    const-string/jumbo v0, "storeStaticAuthenticationDataWithExpiration"

    return-object v0

    :pswitch_10  #0xb
    const-string/jumbo v0, "storeStaticAuthenticationData"

    return-object v0

    :pswitch_14  #0xa
    const-string v0, "getAuthKeysNeedingCertification"

    return-object v0

    :pswitch_17  #0x9
    const-string/jumbo v0, "setAvailableAuthenticationKeys"

    return-object v0

    :pswitch_1b  #0x8
    const-string v0, "getEntries"

    return-object v0

    :pswitch_1e  #0x7
    const-string/jumbo v0, "selectAuthKey"

    return-object v0

    :pswitch_22  #0x6
    const-string v0, "getCredentialKeyCertificateChain"

    return-object v0

    :pswitch_25  #0x5
    const-string/jumbo v0, "proveOwnership"

    return-object v0

    :pswitch_29  #0x4
    const-string v0, "deleteWithChallenge"

    return-object v0

    :pswitch_2c  #0x3
    const-string v0, "deleteCredential"

    return-object v0

    :pswitch_2f  #0x2
    const-string/jumbo v0, "setReaderEphemeralPublicKey"

    return-object v0

    :pswitch_33  #0x1
    const-string v0, "createEphemeralKeyPair"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_2f  #00000002
        :pswitch_2c  #00000003
        :pswitch_29  #00000004
        :pswitch_25  #00000005
        :pswitch_22  #00000006
        :pswitch_1e  #00000007
        :pswitch_1b  #00000008
        :pswitch_17  #00000009
        :pswitch_14  #0000000a
        :pswitch_10  #0000000b
        :pswitch_c  #0000000c
        :pswitch_9  #0000000d
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

    invoke-static {p1}, Landroid/security/identity/ICredential$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.security.identity.ICredential"

    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v9, :pswitch_data_138

    packed-switch v9, :pswitch_data_13e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_24  #0xe
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->update()Landroid/security/identity/IWritableCredential;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_137

    :pswitch_30  #0xd
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->getAuthenticationDataUsageCount()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_137

    :pswitch_3c  #0xc
    sget-object v0, Landroid/security/identity/AuthKeyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/AuthKeyParcel;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/security/identity/ICredential$Stub;->storeStaticAuthenticationDataWithExpiration(Landroid/security/identity/AuthKeyParcel;J[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_137

    :pswitch_57  #0xb
    sget-object v0, Landroid/security/identity/AuthKeyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/AuthKeyParcel;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/security/identity/ICredential$Stub;->storeStaticAuthenticationData(Landroid/security/identity/AuthKeyParcel;[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_137

    :pswitch_6e  #0xa
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->getAuthKeysNeedingCertification()[Landroid/security/identity/AuthKeyParcel;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_137

    :pswitch_7a  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/security/identity/ICredential$Stub;->setAvailableAuthenticationKeys(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_137

    :pswitch_8d  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    sget-object v0, Landroid/security/identity/RequestNamespaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Landroid/security/identity/RequestNamespaceParcel;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/security/identity/ICredential$Stub;->getEntries([B[Landroid/security/identity/RequestNamespaceParcel;[B[BZZZ)Landroid/security/identity/GetEntriesResultParcel;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_137

    :pswitch_ca  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Landroid/security/identity/ICredential$Stub;->selectAuthKey(ZZZ)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_137

    :pswitch_e4  #0x6
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->getCredentialKeyCertificateChain()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_137

    :pswitch_ef  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/security/identity/ICredential$Stub;->proveOwnership([B)[B

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_137

    :pswitch_101  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/security/identity/ICredential$Stub;->deleteWithChallenge([B)[B

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_137

    :pswitch_113  #0x3
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->deleteCredential()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_137

    :pswitch_11e  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/security/identity/ICredential$Stub;->setReaderEphemeralPublicKey([B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_137

    :pswitch_12c  #0x1
    invoke-virtual/range {p0 .. p0}, Landroid/security/identity/ICredential$Stub;->createEphemeralKeyPair()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    nop

    :goto_137
    return v13

    :pswitch_data_138
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_12c  #00000001
        :pswitch_11e  #00000002
        :pswitch_113  #00000003
        :pswitch_101  #00000004
        :pswitch_ef  #00000005
        :pswitch_e4  #00000006
        :pswitch_ca  #00000007
        :pswitch_8d  #00000008
        :pswitch_7a  #00000009
        :pswitch_6e  #0000000a
        :pswitch_57  #0000000b
        :pswitch_3c  #0000000c
        :pswitch_30  #0000000d
        :pswitch_24  #0000000e
    .end packed-switch
.end method
