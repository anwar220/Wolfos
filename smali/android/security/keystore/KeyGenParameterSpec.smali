# classes3.dex

.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

.field private static final DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final mAttestKeyAlias:Ljava/lang/String;

.field private final mAttestationChallenge:[B

.field private final mAttestationIds:[I

.field private final mBlockModes:[Ljava/lang/String;

.field private final mCertificateNotAfter:Ljava/util/Date;

.field private final mCertificateNotBefore:Ljava/util/Date;

.field private final mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mCriticalToDeviceEncryption:Z

.field private final mDevicePropertiesAttestationIncluded:Z

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mIsStrongBoxBacked:Z

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mMaxUsageCount:I

.field private final mNamespace:I

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mUniqueIdIncluded:Z

.field private final mUnlockedDeviceRequired:Z

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationType:I

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I

.field private final mUserConfirmationRequired:Z

.field private final mUserPresenceRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Keystore Key"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x23d19d43c00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;)V
    .registers 50

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e0

    if-nez p5, :cond_15

    if-nez p22, :cond_12

    sget-object v1, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    goto :goto_17

    :cond_12
    sget-object v1, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    goto :goto_17

    :cond_15
    move-object/from16 v1, p5

    :goto_17
    if-nez p7, :cond_1c

    sget-object v2, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    goto :goto_1e

    :cond_1c
    move-object/from16 v2, p7

    :goto_1e
    if-nez p8, :cond_23

    sget-object v3, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    goto :goto_25

    :cond_23
    move-object/from16 v3, p8

    :goto_25
    if-nez p6, :cond_2a

    sget-object v4, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    goto :goto_2c

    :cond_2a
    move-object/from16 v4, p6

    :goto_2c
    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_d6

    move-object/from16 v5, p1

    iput-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    move/from16 v6, p2

    iput v6, v0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    move/from16 v7, p3

    iput v7, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    move-object/from16 v8, p4

    iput-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    iput-object v4, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    invoke-static {v2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static/range {p9 .. p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static/range {p10 .. p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static/range {p11 .. p11}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move/from16 v9, p12

    iput v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    nop

    invoke-static/range {p14 .. p14}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static/range {p16 .. p16}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    move/from16 v10, p17

    iput-boolean v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    move/from16 v11, p18

    iput-boolean v11, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    move/from16 v12, p21

    iput-boolean v12, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    move/from16 v13, p19

    iput v13, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v14, p20

    iput v14, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationType:I

    invoke-static/range {p22 .. p22}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v15

    iput-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    move/from16 v15, p23

    iput-boolean v15, v0, Landroid/security/keystore/KeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    move-object/from16 p5, v1

    move-object/from16 v1, p24

    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationIds:[I

    move/from16 v1, p25

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    move/from16 v1, p26

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v1, p27

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v1, p28

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    move/from16 v1, p29

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    move/from16 v1, p30

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    move/from16 v1, p31

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCriticalToDeviceEncryption:Z

    move/from16 v1, p32

    iput v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mMaxUsageCount:I

    move-object/from16 v1, p33

    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestKeyAlias:Ljava/lang/String;

    return-void

    :cond_d6
    move-object/from16 p5, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "certificateNotAfter < certificateNotBefore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e0
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p12

    move/from16 v10, p17

    move/from16 v11, p18

    move/from16 v13, p19

    move/from16 v14, p20

    move/from16 v12, p21

    move/from16 v15, p23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getAttestKeyAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAttestationChallenge()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getAttestationIds()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationIds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundToSpecificSecureUserId()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCertificateNotAfter()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateNotBefore()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUsageCount()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMaxUsageCount:I

    return v0
.end method

.method public getNamespace()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    return v0
.end method

.method public getPurposes()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    invoke-static {v0}, Landroid/security/keystore/KeyProperties;->namespaceToLegacyUid(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getUid called on KeyGenParameterSpec with non legacy keystore namespace."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUserAuthenticationType()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationType:I

    return v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isCriticalToDeviceEncryption()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public isDevicePropertiesAttestationIncluded()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    return v0
.end method

.method public isDigestsSpecified()Z
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isInvalidatedByBiometricEnrollment()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public isRandomizedEncryptionRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public isStrongBoxBacked()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public isUniqueIdIncluded()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    return v0
.end method

.method public isUnlockedDeviceRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public isUserConfirmationRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    return v0
.end method

.method public isUserPresenceRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    return v0
.end method
