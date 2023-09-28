# classes3.dex

.class public Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;,
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field static final APK_SIGNATURE_SCHEME_V31_BLOCK_ID:I = 0x1b93ad61

.field static final APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final PROOF_OF_ROTATION_ATTR_ID:I = 0x3ba06f8c

.field private static final ROTATION_MIN_SDK_VERSION_ATTR_ID:I = 0x559f8b02

.field private static final ROTATION_ON_DEV_RELEASE_ATTR_ID:I = -0x3d594c46

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x3


# instance fields
.field private final mApk:Ljava/io/RandomAccessFile;

.field private mBlockId:I

.field private mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

.field private mSignerMinSdkVersion:I

.field private final mVerifyIntegrity:Z


# direct methods
.method private constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    iput-boolean p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mVerifyIntegrity:Z

    return-void
.end method

.method public static findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    const v0, -0xfac9740

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method static generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/util/apk/VerityBuilder;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v2

    :catchall_14
    move-exception v1

    :try_start_15
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v1
.end method

.method static getVerityRootHash(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v2

    iget-object v3, v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v3

    :catchall_17
    move-exception v1

    :try_start_18
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v1
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_8} :catch_1a

    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_c .. :try_end_f} :catch_1a

    return v1

    :catchall_10
    move-exception v1

    :try_start_11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
    :try_end_1a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_16 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    iput p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/4 v0, 0x0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :try_start_9
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_f} :catch_ce

    move-object v8, v3

    nop

    :try_start_11
    iget-object v3, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_c5

    move-object v9, v3

    move-object v10, v2

    :goto_19
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4e

    :try_start_1f
    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v2, v1, v8}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Landroid/util/Pair;

    move-result-object v3
    :try_end_27
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_1f .. :try_end_27} :catch_4c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_2c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1f .. :try_end_27} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_27} :catch_2c

    move-object v10, v3

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :catch_2c
    move-exception v2

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse/verify signer #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " block"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4c
    move-exception v2

    goto :goto_19

    :cond_4e
    const/4 v2, 0x1

    if-lt v0, v2, :cond_b0

    if-nez v10, :cond_54

    goto :goto_b0

    :cond_54
    if-ne v0, v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a0

    iget-boolean v2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mVerifyIntegrity:Z

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    invoke-static {v1, v2, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    :cond_65
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v3, v4, v5, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v2

    move-object v11, v2

    goto :goto_8c

    :cond_8b
    move-object v11, v2

    :goto_8c
    new-instance v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Ljava/security/cert/X509Certificate;

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-object v2, v12

    move-object v5, v11

    move-object v6, v1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;-><init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;[BLjava/util/Map;I)V

    return-object v12

    :cond_a0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "No content digests found"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a8
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "APK Signature Scheme V3 only supports one signer: multiple signers found."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b0
    :goto_b0
    const v2, -0xfac9740

    if-ne p2, v2, :cond_bd

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "No signers found"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_bd
    new-instance v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    const-string v3, "None of the signers support the current platform version"

    invoke-direct {v2, v3}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_c5
    move-exception v3

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Failed to read list of signers"

    invoke-direct {v4, v5, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_ce
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;

    invoke-direct {v0, p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;-><init>(Ljava/io/RandomAccessFile;Z)V

    const v1, 0x1b93ad61

    :try_start_8
    invoke-static {p0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_10
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_8 .. :try_end_10} :catch_13
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v1

    :catch_11
    move-exception v1

    goto :goto_15

    :catch_13
    move-exception v1

    nop

    :goto_15
    const v1, -0xfac9740

    :try_start_18
    invoke-static {p0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_20
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_18 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception v1

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private static verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v1

    :catchall_10
    move-exception v1

    :try_start_11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
.end method

.method private verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_14a

    invoke-static {p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_12d

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    sparse-switch v3, :sswitch_data_150

    goto/16 :goto_12b

    :sswitch_27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v4, :cond_83

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iget-object v5, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v5}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v5

    const-string v6, "Expected a v3.1 signing block targeting SDK version "

    if-eqz v5, :cond_66

    iget-object v5, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v5}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v5

    if-ne v5, v4, :cond_45

    goto/16 :goto_12b

    :cond_45
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", but the v3.1 block was targeting "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_66
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but a v3.1 block was not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_83
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remaining buffer too short to contain rotation minSdkVersion value. Remaining: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_a0
    if-nez v1, :cond_e2

    invoke-static {v2, p3}, Landroid/util/apk/ApkSigningBlockUtils;->verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object v1

    :try_start_a6
    iget-object v4, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d8

    iget-object v4, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    iget-object v5, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_d0

    goto :goto_d8

    :cond_d0
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Terminal certificate in Proof-of-rotation record does not match APK signing certificate"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_a6 .. :try_end_d8} :catch_d9

    :cond_d8
    :goto_d8
    goto :goto_12b

    :catch_d9
    move-exception v4

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to encode certificate when comparing Proof-of-rotation record and signing certificate"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_e2
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_ea
    iget v4, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v5, 0x1b93ad61

    if-ne v4, v5, :cond_12b

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v5, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    if-ne v4, v5, :cond_12b

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v5, "REL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_102

    goto :goto_12b

    :cond_102
    iget v4, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    invoke-static {v4}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v4

    iput-object v4, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The device is running a release version of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but the signer is targeting a dev release"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12b
    :goto_12b
    goto/16 :goto_d

    :cond_12d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14a
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_150
    .sparse-switch
        -0x3d594c46 -> :sswitch_ea
        0x3ba06f8c -> :sswitch_a0
        0x559f8b02 -> :sswitch_27
    .end sparse-switch
.end method

.method private verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Landroid/util/Pair;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2f1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_1c

    move-object/from16 v11, p2

    goto/16 :goto_2f3

    :cond_1c
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    const/4 v0, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v9

    move v9, v8

    move v8, v0

    :goto_2f
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/16 v12, 0x8

    const/4 v13, -0x1

    if-eqz v0, :cond_87

    add-int/lit8 v8, v8, 0x1

    :try_start_3a
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-lt v14, v12, :cond_65

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v14

    if-nez v14, :cond_56

    goto :goto_2f

    :cond_56
    if-eq v9, v13, :cond_5e

    invoke-static {v12, v9}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v13

    if-lez v13, :cond_64

    :cond_5e
    move v9, v12

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v13

    move-object v11, v13

    :cond_64
    goto :goto_2f

    :cond_65
    new-instance v12, Ljava/lang/SecurityException;

    const-string v13, "Signature record too short"

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_6d} :catch_6d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3a .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception v0

    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse signature record #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_87
    if-ne v9, v13, :cond_9b

    if-nez v8, :cond_93

    new-instance v0, Ljava/lang/SecurityException;

    const-string v12, "No signatures found"

    invoke-direct {v0, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    new-instance v0, Ljava/lang/SecurityException;

    const-string v12, "No supported signatures found"

    invoke-direct {v0, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v13

    nop

    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v14

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/security/spec/AlgorithmParameterSpec;

    nop

    :try_start_af
    invoke-static {v13}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_af .. :try_end_b3} :catch_2bf
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_af .. :try_end_b3} :catch_2bf
    .catch Ljava/security/InvalidKeyException; {:try_start_af .. :try_end_b3} :catch_2bf
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_af .. :try_end_b3} :catch_2bf
    .catch Ljava/security/SignatureException; {:try_start_af .. :try_end_b3} :catch_2bf

    move-object/from16 v17, v6

    :try_start_b5
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v15}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_c5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b5 .. :try_end_c5} :catch_2ad
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b5 .. :try_end_c5} :catch_2ad
    .catch Ljava/security/InvalidKeyException; {:try_start_b5 .. :try_end_c5} :catch_2ad
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b5 .. :try_end_c5} :catch_2ad
    .catch Ljava/security/SignatureException; {:try_start_b5 .. :try_end_c5} :catch_2ad

    if-eqz v12, :cond_de

    :try_start_c7
    invoke-virtual {v6, v12}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_ca
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/security/InvalidKeyException; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/security/SignatureException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_de

    :catch_cb
    move-exception v0

    move/from16 v22, v8

    move/from16 v27, v9

    move-object/from16 v30, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v16, v14

    move-object/from16 v11, p2

    goto/16 :goto_2d2

    :cond_de
    :goto_de
    :try_start_de
    invoke-virtual {v6, v3}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v6, v11}, Ljava/security/Signature;->verify([B)Z

    move-result v18
    :try_end_e5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_de .. :try_end_e5} :catch_2ad
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_de .. :try_end_e5} :catch_2ad
    .catch Ljava/security/InvalidKeyException; {:try_start_de .. :try_end_e5} :catch_2ad
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_de .. :try_end_e5} :catch_2ad
    .catch Ljava/security/SignatureException; {:try_start_de .. :try_end_e5} :catch_2ad

    move/from16 v6, v18

    nop

    if-eqz v6, :cond_292

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v6

    move-object v6, v0

    :goto_fe
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_17b

    move/from16 v22, v8

    add-int/lit8 v8, v19, 0x1

    :try_start_108
    invoke-static/range {v18 .. v18}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10c} :catch_157
    .catch Ljava/nio/BufferUnderflowException; {:try_start_108 .. :try_end_10c} :catch_157

    move-object/from16 v23, v11

    :try_start_10e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_112} :catch_14f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_10e .. :try_end_112} :catch_14f

    move-object/from16 v24, v12

    const/16 v12, 0x8

    if-lt v11, v12, :cond_141

    :try_start_118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_120} :catch_13b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_118 .. :try_end_120} :catch_13b

    move-object/from16 v25, v13

    move-object/from16 v13, v20

    :try_start_124
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v11, v9, :cond_12e

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v12

    move-object v6, v12

    :cond_12e
    move/from16 v19, v8

    move-object/from16 v20, v13

    move/from16 v8, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    goto :goto_fe

    :catch_13b
    move-exception v0

    move-object/from16 v25, v13

    move-object/from16 v13, v20

    goto :goto_160

    :cond_141
    move-object/from16 v25, v13

    move-object/from16 v13, v20

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Record too short"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_14d} :catch_14d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_124 .. :try_end_14d} :catch_14d

    :catch_14d
    move-exception v0

    goto :goto_160

    :catch_14f
    move-exception v0

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v13, v20

    goto :goto_160

    :catch_157
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v13, v20

    :goto_160
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v14

    const-string v14, "Failed to parse digest record #"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_17b
    move/from16 v22, v8

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v16, v14

    move-object/from16 v13, v20

    invoke-interface {v10, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28a

    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [B

    if-eqz v12, :cond_1c8

    invoke-static {v12, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1a9

    move-object/from16 v20, v6

    goto :goto_1ca

    :cond_1a9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v6

    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c8
    move-object/from16 v20, v6

    :goto_1ca
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    const/4 v0, 0x0

    :goto_1d5
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v26

    if-eqz v26, :cond_224

    move/from16 v26, v8

    add-int/lit8 v8, v0, 0x1

    move/from16 v27, v9

    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v9

    :try_start_1e5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1f0
    .catch Ljava/security/cert/CertificateException; {:try_start_1e5 .. :try_end_1f0} :catch_204

    nop

    move-object/from16 v28, v6

    new-instance v6, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v6, v0, v9}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v6

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    move/from16 v8, v26

    move/from16 v9, v27

    move-object/from16 v6, v28

    goto :goto_1d5

    :catch_204
    move-exception v0

    move-object/from16 v28, v6

    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v29, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v10

    const-string v10, "Failed to decode certificate #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_224
    move-object/from16 v28, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v30, v10

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_280

    const/4 v6, 0x0

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_276

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    if-ne v9, v4, :cond_26b

    iput v9, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    if-ne v10, v5, :cond_260

    move/from16 v29, v0

    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v0, v14, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Landroid/util/Pair;

    move-result-object v31

    return-object v31

    :cond_260
    move/from16 v29, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "maxSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26b
    move/from16 v29, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "minSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_276
    move/from16 v29, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_280
    move/from16 v29, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "No certificates listed"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_292
    move/from16 v21, v6

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " signature did not verify"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2ad
    move-exception v0

    move/from16 v22, v8

    move/from16 v27, v9

    move-object/from16 v30, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v16, v14

    move-object/from16 v11, p2

    goto :goto_2d2

    :catch_2bf
    move-exception v0

    move-object/from16 v17, v6

    move/from16 v22, v8

    move/from16 v27, v9

    move-object/from16 v30, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v16, v14

    move-object/from16 v11, p2

    :goto_2d2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to verify "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " signature"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2f1
    move-object/from16 v11, p2

    :goto_2f3
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v2, 0x1b93ad61

    if-ne v0, v2, :cond_310

    iget-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_30a

    iget-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    if-le v0, v4, :cond_310

    :cond_30a
    invoke-static {v4}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    :cond_310
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signer not supported by this platform version. This platform: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", signer minSdkVersion: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", maxSdkVersion: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
