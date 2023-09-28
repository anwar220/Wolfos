# classes3.dex

.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;,
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CORES:I

.field private static final TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static sIsPerfLockAcquired:Z

.field private static sPerfBoost:Landroid/util/BoostFramework;


# direct methods
.method static bridge synthetic -$$Nest$sfgetNUMBER_OF_CORES()I
    .registers 1

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smconvertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 1

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smloadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_13

    goto :goto_1b

    :cond_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    :goto_1b
    sput v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const/4 v0, 0x0

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .registers 2

    if-eqz p0, :cond_7

    :try_start_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :cond_7
    :goto_7
    return-void
.end method

.method private static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    return-object v0
.end method

.method public static generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .registers 2

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static getVerityRootHash(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    :try_start_6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/util/jar/StrictJarFile;",
            "Ljava/util/zip/ZipEntry;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_17
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_15
    move-exception v1

    goto :goto_43

    :catch_17
    move-exception v1

    const/16 v2, -0x66

    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_15

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :goto_43
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static readFullyIgnoringContents(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_f

    const/16 v1, 0x1000

    new-array v0, v1, [B

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    add-int/2addr v2, v1

    goto :goto_11

    :cond_1d
    sget-object v3, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    nop

    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_10
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v2, 0x4

    const/16 v3, -0x67

    if-le p2, v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_27
    :try_start_27
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    move-exception v4

    if-lt p2, v2, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v4 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_47
    const/4 v2, 0x3

    if-le p2, v2, :cond_68

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_68
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const/4 v12, 0x1

    if-eqz v11, :cond_c

    sget v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    goto :goto_d

    :cond_c
    move v1, v12

    :goto_d
    move v13, v1

    new-array v14, v13, [Landroid/util/jar/StrictJarFile;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/16 v15, -0x67

    const-wide/32 v7, 0x40000

    const/16 v16, 0x0

    :try_start_1c
    const-string/jumbo v1, "strictJarFileCtor"

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;
    :try_end_24
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c .. :try_end_24} :catch_35e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_31b
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_24} :catch_31b
    .catchall {:try_start_1c .. :try_end_24} :catchall_315

    if-nez v1, :cond_40

    :try_start_26
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    sput-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;
    :try_end_2d
    .catch Ljava/security/GeneralSecurityException; {:try_start_26 .. :try_end_2d} :catch_3a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2d} :catch_34
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2e

    goto :goto_40

    :catchall_2e
    move-exception v0

    move-object v1, v0

    move-wide/from16 v22, v7

    goto/16 :goto_3a4

    :catch_34
    move-exception v0

    move-object v1, v0

    move-wide/from16 v22, v7

    goto/16 :goto_31f

    :catch_3a
    move-exception v0

    move-object v1, v0

    move-wide/from16 v22, v7

    goto/16 :goto_362

    :cond_40
    :goto_40
    :try_start_40
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;
    :try_end_42
    .catch Ljava/security/GeneralSecurityException; {:try_start_40 .. :try_end_42} :catch_35e
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_42} :catch_31b
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_42} :catch_31b
    .catchall {:try_start_40 .. :try_end_42} :catchall_315

    const/4 v5, 0x0

    if-eqz v1, :cond_5d

    :try_start_45
    sget-boolean v2, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-nez v2, :cond_5d

    if-eqz v11, :cond_5d

    const/16 v2, 0x1088

    const v4, 0x7fffffff

    const/4 v6, -0x1

    invoke-virtual {v1, v2, v5, v4, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    const-string v1, "ApkSignatureVerifier"

    const-string v2, "Perflock acquired for PackageInstall "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v12, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    if-ge v1, v13, :cond_6a

    new-instance v2, Landroid/util/jar/StrictJarFile;

    invoke-direct {v2, v10, v12, v11}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    aput-object v2, v14, v1
    :try_end_67
    .catch Ljava/security/GeneralSecurityException; {:try_start_45 .. :try_end_67} :catch_3a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_67} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_67} :catch_34
    .catchall {:try_start_45 .. :try_end_67} :catchall_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_6a
    :try_start_6a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    aget-object v1, v14, v16

    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v1, v2}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_78
    .catch Ljava/security/GeneralSecurityException; {:try_start_6a .. :try_end_78} :catch_35e
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_78} :catch_31b
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_78} :catch_31b
    .catchall {:try_start_6a .. :try_end_78} :catchall_315

    move-object v2, v1

    if-nez v2, :cond_c0

    const/16 v1, -0x65

    :try_start_7d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_9a
    .catch Ljava/security/GeneralSecurityException; {:try_start_7d .. :try_end_9a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_9a} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_9a} :catch_34
    .catchall {:try_start_7d .. :try_end_9a} :catchall_2e

    sget-boolean v5, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v5, :cond_ae

    sget-object v5, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v5, :cond_ae

    invoke-virtual {v5}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v5, "ApkSignatureVerifier"

    const-string v6, "Perflock released for PackageInstall "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v5, 0x0

    :goto_b5
    if-ge v5, v13, :cond_bf

    aget-object v6, v14, v5

    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b5

    :cond_bf
    return-object v1

    :cond_c0
    :try_start_c0
    aget-object v1, v14, v16

    invoke-static {v9, v1, v2}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6
    :try_end_ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_c0 .. :try_end_ca} :catch_35e
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_ca} :catch_31b
    .catch Ljava/lang/RuntimeException; {:try_start_c0 .. :try_end_ca} :catch_31b
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_315

    if-eqz v6, :cond_f6

    :try_start_cc
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_d0
    .catch Ljava/security/GeneralSecurityException; {:try_start_cc .. :try_end_d0} :catch_3a
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d0} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_cc .. :try_end_d0} :catch_34
    .catchall {:try_start_cc .. :try_end_d0} :catchall_2e

    sget-boolean v6, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v6, :cond_e4

    sget-object v6, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v6, :cond_e4

    invoke-virtual {v6}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v6, "ApkSignatureVerifier"

    const-string v12, "Perflock released for PackageInstall "

    invoke-static {v6, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v6, 0x0

    :goto_eb
    if-ge v6, v13, :cond_f5

    aget-object v7, v14, v6

    invoke-static {v7}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_eb

    :cond_f5
    return-object v5

    :cond_f6
    :try_start_f6
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/security/cert/Certificate;

    move-object/from16 v17, v6

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6
    :try_end_102
    .catch Ljava/security/GeneralSecurityException; {:try_start_f6 .. :try_end_102} :catch_35e
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_102} :catch_31b
    .catch Ljava/lang/RuntimeException; {:try_start_f6 .. :try_end_102} :catch_31b
    .catchall {:try_start_f6 .. :try_end_102} :catchall_315

    if-eqz v6, :cond_14d

    :try_start_104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no certificates at entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v15, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_127
    .catch Ljava/security/GeneralSecurityException; {:try_start_104 .. :try_end_127} :catch_3a
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_127} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_127} :catch_34
    .catchall {:try_start_104 .. :try_end_127} :catchall_2e

    sget-boolean v6, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v6, :cond_13b

    sget-object v6, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v6, :cond_13b

    invoke-virtual {v6}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v6, "ApkSignatureVerifier"

    const-string v12, "Perflock released for PackageInstall "

    invoke-static {v6, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v6, 0x0

    :goto_142
    if-ge v6, v13, :cond_14c

    aget-object v7, v14, v6

    invoke-static {v7}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_142

    :cond_14c
    return-object v5

    :cond_14d
    :try_start_14d
    invoke-static/range {v17 .. v17}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    if-eqz v11, :cond_2cf

    aget-object v18, v14, v16

    invoke-virtual/range {v18 .. v18}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_159
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19
    :try_end_15d
    .catch Ljava/security/GeneralSecurityException; {:try_start_14d .. :try_end_15d} :catch_35e
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_15d} :catch_31b
    .catch Ljava/lang/RuntimeException; {:try_start_14d .. :try_end_15d} :catch_31b
    .catchall {:try_start_14d .. :try_end_15d} :catchall_315

    if-eqz v19, :cond_1af

    :try_start_15f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/zip/ZipEntry;

    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_16e

    goto :goto_159

    :cond_16e
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v19

    const-string v5, "META-INF/"
    :try_end_176
    .catch Ljava/security/GeneralSecurityException; {:try_start_15f .. :try_end_176} :catch_3a
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_176} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_15f .. :try_end_176} :catch_34
    .catchall {:try_start_15f .. :try_end_176} :catchall_2e

    move-object/from16 v7, v21

    :try_start_178
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_183

    const/4 v5, 0x0

    const-wide/32 v7, 0x40000

    goto :goto_159

    :cond_183
    const-string v5, "AndroidManifest.xml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_190

    const/4 v5, 0x0

    const-wide/32 v7, 0x40000

    goto :goto_159

    :cond_190
    move-object/from16 v5, v20

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_195
    .catch Ljava/security/GeneralSecurityException; {:try_start_178 .. :try_end_195} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_195} :catch_1a1
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_195} :catch_1a1
    .catchall {:try_start_178 .. :try_end_195} :catchall_19a

    const/4 v5, 0x0

    const-wide/32 v7, 0x40000

    goto :goto_159

    :catchall_19a
    move-exception v0

    move-object v1, v0

    const-wide/32 v22, 0x40000

    goto/16 :goto_3a4

    :catch_1a1
    move-exception v0

    move-object v1, v0

    const-wide/32 v22, 0x40000

    goto/16 :goto_31f

    :catch_1a8
    move-exception v0

    move-object v1, v0

    const-wide/32 v22, 0x40000

    goto/16 :goto_362

    :cond_1af
    :try_start_1af
    new-instance v5, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    invoke-direct {v5}, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;-><init>()V

    move-object v8, v5

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v8, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v26, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const-wide/16 v27, 0x1

    sget-object v29, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v30, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v30 .. v30}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object/from16 v24, v5

    move/from16 v25, v26

    invoke-direct/range {v24 .. v30}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v7, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1d5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    move-object/from16 v21, v6

    move-object v6, v5

    new-instance v24, Landroid/util/apk/ApkSignatureVerifier$1;
    :try_end_1e6
    .catch Ljava/security/GeneralSecurityException; {:try_start_1af .. :try_end_1e6} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1e6} :catch_2c4
    .catch Ljava/lang/RuntimeException; {:try_start_1af .. :try_end_1e6} :catch_2c4
    .catchall {:try_start_1af .. :try_end_1e6} :catchall_2bf

    move-object/from16 v25, v1

    move-object/from16 v1, v24

    move-object/from16 v26, v2

    move-object v2, v8

    move-object/from16 v27, v4

    move-object v4, v14

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object v15, v7

    const-wide/32 v22, 0x40000

    move-object/from16 v7, p1

    move-object v12, v8

    move-object/from16 v8, v21

    :try_start_1fc
    invoke-direct/range {v1 .. v8}, Landroid/util/apk/ApkSignatureVerifier$1;-><init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Landroid/content/pm/parsing/result/ParseInput;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V

    move-object/from16 v1, v24

    iget-object v2, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v2
    :try_end_204
    .catch Ljava/security/GeneralSecurityException; {:try_start_1fc .. :try_end_204} :catch_313
    .catch Ljava/io/IOException; {:try_start_1fc .. :try_end_204} :catch_311
    .catch Ljava/lang/RuntimeException; {:try_start_1fc .. :try_end_204} :catch_311
    .catchall {:try_start_1fc .. :try_end_204} :catchall_3a1

    :try_start_204
    iget v4, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v4, :cond_20b

    invoke-virtual {v15, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_20b
    monitor-exit v2

    move-object v8, v12

    move-object v7, v15

    move-object/from16 v6, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v4, v27

    const/4 v12, 0x1

    const/16 v15, -0x67

    goto :goto_1d5

    :catchall_21a
    move-exception v0

    move-object v4, v0

    monitor-exit v2
    :try_end_21d
    .catchall {:try_start_204 .. :try_end_21d} :catchall_21a

    :try_start_21d
    throw v4

    :cond_21e
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v21, v6

    move-object v15, v7

    move-object v12, v8

    const-wide/32 v22, 0x40000

    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z

    invoke-virtual {v15}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_231
    iget-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_233
    .catch Ljava/security/GeneralSecurityException; {:try_start_21d .. :try_end_233} :catch_313
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_233} :catch_311
    .catch Ljava/lang/RuntimeException; {:try_start_21d .. :try_end_233} :catch_311
    .catchall {:try_start_21d .. :try_end_233} :catchall_3a1

    if-eqz v1, :cond_27a

    :try_start_235
    iget v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v1, :cond_25e

    iget-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    if-nez v1, :cond_25e

    const-string v1, "ApkSignatureVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verifyV1 Exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    :cond_25e
    const-wide/16 v1, 0x32

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v1, v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_26a

    const/4 v1, 0x1

    goto :goto_26c

    :cond_26a
    move/from16 v1, v16

    :goto_26c
    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_26e
    .catch Ljava/lang/InterruptedException; {:try_start_235 .. :try_end_26e} :catch_26f
    .catch Ljava/security/GeneralSecurityException; {:try_start_235 .. :try_end_26e} :catch_313
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_26e} :catch_311
    .catch Ljava/lang/RuntimeException; {:try_start_235 .. :try_end_26e} :catch_311
    .catchall {:try_start_235 .. :try_end_26e} :catchall_3a1

    goto :goto_231

    :catch_26f
    move-exception v0

    move-object v1, v0

    :try_start_271
    const-string v2, "ApkSignatureVerifier"

    const-string v4, "VerifyV1 interrupted while awaiting all threads done..."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_231

    :cond_27a
    iget v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v1, :cond_2d9

    iget v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    invoke-interface {v9, v1, v2, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_299
    .catch Ljava/security/GeneralSecurityException; {:try_start_271 .. :try_end_299} :catch_313
    .catch Ljava/io/IOException; {:try_start_271 .. :try_end_299} :catch_311
    .catch Ljava/lang/RuntimeException; {:try_start_271 .. :try_end_299} :catch_311
    .catchall {:try_start_271 .. :try_end_299} :catchall_3a1

    sget-boolean v2, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v2, :cond_2ad

    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v2, :cond_2ad

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v2, "ApkSignatureVerifier"

    const-string v4, "Perflock released for PackageInstall "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ad
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v2, 0x0

    :goto_2b4
    if-ge v2, v13, :cond_2be

    aget-object v4, v14, v2

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b4

    :cond_2be
    return-object v1

    :catchall_2bf
    move-exception v0

    const-wide/32 v22, 0x40000

    goto :goto_318

    :catch_2c4
    move-exception v0

    const-wide/32 v22, 0x40000

    goto :goto_31e

    :catch_2c9
    move-exception v0

    const-wide/32 v22, 0x40000

    goto/16 :goto_361

    :cond_2cf
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v21, v6

    move-wide/from16 v22, v7

    :cond_2d9
    :try_start_2d9
    new-instance v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v2, Landroid/content/pm/SigningDetails;

    move-object/from16 v4, v21

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2eb
    .catch Ljava/security/GeneralSecurityException; {:try_start_2d9 .. :try_end_2eb} :catch_313
    .catch Ljava/io/IOException; {:try_start_2d9 .. :try_end_2eb} :catch_311
    .catch Ljava/lang/RuntimeException; {:try_start_2d9 .. :try_end_2eb} :catch_311
    .catchall {:try_start_2d9 .. :try_end_2eb} :catchall_3a1

    sget-boolean v2, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v2, :cond_2ff

    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v2, :cond_2ff

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v2, "ApkSignatureVerifier"

    const-string v5, "Perflock released for PackageInstall "

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ff
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v2, 0x0

    :goto_306
    if-ge v2, v13, :cond_310

    aget-object v5, v14, v2

    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_306

    :cond_310
    return-object v1

    :catch_311
    move-exception v0

    goto :goto_31e

    :catch_313
    move-exception v0

    goto :goto_361

    :catchall_315
    move-exception v0

    move-wide/from16 v22, v7

    :goto_318
    move-object v1, v0

    goto/16 :goto_3a4

    :catch_31b
    move-exception v0

    move-wide/from16 v22, v7

    :goto_31e
    move-object v1, v0

    :goto_31f
    :try_start_31f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x67

    invoke-interface {v9, v4, v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_338
    .catchall {:try_start_31f .. :try_end_338} :catchall_3a1

    sget-boolean v4, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v4, :cond_34c

    sget-object v4, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v4, :cond_34c

    invoke-virtual {v4}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v4, "ApkSignatureVerifier"

    const-string v5, "Perflock released for PackageInstall "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34c
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v4, 0x0

    :goto_353
    if-ge v4, v13, :cond_35d

    aget-object v5, v14, v4

    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_353

    :cond_35d
    return-object v2

    :catch_35e
    move-exception v0

    move-wide/from16 v22, v7

    :goto_361
    move-object v1, v0

    :goto_362
    const/16 v2, -0x69

    :try_start_364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v2, v4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_37b
    .catchall {:try_start_364 .. :try_end_37b} :catchall_3a1

    sget-boolean v4, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v4, :cond_38f

    sget-object v4, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v4, :cond_38f

    invoke-virtual {v4}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v4, "ApkSignatureVerifier"

    const-string v5, "Perflock released for PackageInstall "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38f
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v4, 0x0

    :goto_396
    if-ge v4, v13, :cond_3a0

    aget-object v5, v14, v4

    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_396

    :cond_3a0
    return-object v2

    :catchall_3a1
    move-exception v0

    goto/16 :goto_318

    :goto_3a4
    sget-boolean v2, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v2, :cond_3b8

    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v2, :cond_3b8

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v2, "ApkSignatureVerifier"

    const-string v4, "Perflock released for PackageInstall "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b8
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v2, 0x0

    :goto_3bf
    if-ge v2, v13, :cond_3c9

    aget-object v4, v14, v2

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3bf

    :cond_3c9
    throw v1
.end method

.method private static verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV2"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV2"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    :try_start_f
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    new-instance v5, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v6, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v7}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    iget-object v7, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_2a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_f .. :try_end_2a} :catch_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_30
    .catchall {:try_start_f .. :try_end_2a} :catchall_2e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v5

    :catchall_2e
    move-exception v0

    goto :goto_57

    :catch_30
    move-exception v0

    const/16 v3, -0x67

    :try_start_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_2e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catch_54
    move-exception v0

    nop

    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_2e

    :goto_57
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const/4 v1, 0x3

    const/16 v2, -0x67

    if-lt p2, v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_23
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v3, 0x2

    if-le p2, v3, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_48
    :try_start_48
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_48 .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    move-exception v4

    if-lt p2, v3, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_68
    const/4 v3, 0x1

    if-le p2, v3, :cond_89

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_89
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV3"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV3"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p2, :cond_15

    :try_start_10
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    goto :goto_19

    :cond_15
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    :goto_19
    nop

    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v6, :cond_65

    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v6, v6, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/pm/Signature;

    move-object v5, v6

    const/4 v6, 0x0

    :goto_37
    array-length v7, v5

    if-ge v6, v7, :cond_65

    new-instance v7, Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v5, v6

    aget-object v7, v5, v6

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_65
    new-instance v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v7, Landroid/content/pm/SigningDetails;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v8, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v6, v7, v8}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_76
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_10 .. :try_end_76} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_76} :catch_7c
    .catchall {:try_start_10 .. :try_end_76} :catchall_7a

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_7a
    move-exception v0

    goto :goto_a3

    :catch_7c
    move-exception v0

    const/16 v3, -0x67

    :try_start_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_9c
    .catchall {:try_start_7f .. :try_end_9c} :catchall_7a

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catch_a0
    move-exception v0

    nop

    :try_start_a2
    throw v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_7a

    :goto_a3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_a

    const-string/jumbo v0, "verifyV4"

    goto :goto_c

    :cond_a
    const-string v0, "certsOnlyV4"

    :goto_c
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    :try_start_13
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    move-object v5, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$HashingInfo;

    move-object v6, v0

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$SigningInfos;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez p3, :cond_2f

    iget-object v0, v7, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v0, v0
    :try_end_2d
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_13 .. :try_end_2d} :catch_176
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2d} :catch_14f
    .catchall {:try_start_13 .. :try_end_2d} :catchall_14d

    if-lez v0, :cond_91

    :cond_2f
    nop

    :try_start_30
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v14

    new-array v14, v13, [[Ljava/security/cert/Certificate;

    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v15, v14, v12

    move-object v10, v14

    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v14, :cond_7f

    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v14, v14, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/pm/Signature;

    move-object v8, v14

    const/4 v14, 0x0

    :goto_4e
    array-length v15, v8

    if-ge v14, v15, :cond_7f

    new-instance v15, Landroid/content/pm/Signature;

    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v8, v14

    aget-object v3, v8, v14

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v4, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->setFlags(I)V

    add-int/lit8 v14, v14, 0x1

    const-wide/32 v3, 0x40000

    goto :goto_4e

    :cond_7f
    iget v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I
    :try_end_81
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_30 .. :try_end_81} :catch_83
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_81} :catch_14f
    .catchall {:try_start_30 .. :try_end_81} :catchall_14d

    move v11, v3

    goto :goto_91

    :catch_83
    move-exception v0

    move-object v3, v0

    nop

    :try_start_86
    invoke-static {v2, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v4

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;
    :try_end_8f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_86 .. :try_end_8f} :catch_133
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_14f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_14d

    move-object v10, v4

    nop

    :cond_91
    :goto_91
    nop

    :try_start_92
    invoke-static {v2, v6, v7, v11}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v0

    new-array v3, v13, [[Ljava/security/cert/Certificate;

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    aput-object v4, v3, v12

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    if-eqz p3, :cond_119

    invoke-static {v10}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v12

    array-length v13, v12

    array-length v14, v4

    if-ne v13, v14, :cond_fd

    const/4 v13, 0x0

    array-length v14, v4

    :goto_ac
    if-ge v13, v14, :cond_c7

    aget-object v15, v12, v13

    move-object/from16 v16, v3

    aget-object v3, v4, v13

    invoke-virtual {v15, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_ac

    :cond_bf
    new-instance v3, Ljava/lang/SecurityException;

    const-string v15, "V4 signature certificate does not match V2/V3"

    invoke-direct {v3, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c7
    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    move/from16 v17, v3

    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    array-length v3, v3

    invoke-static {v15, v14, v3}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_ed

    const/4 v3, 0x1

    goto :goto_f2

    :cond_ed
    move/from16 v3, v17

    goto :goto_d2

    :cond_f0
    move/from16 v17, v3

    :goto_f2
    if-eqz v3, :cond_f5

    goto :goto_11b

    :cond_f5
    new-instance v13, Ljava/lang/SecurityException;

    const-string v14, "APK digest in V4 signature does not match V2/V3"

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_fd
    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid number of certificates: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_119
    move-object/from16 v16, v3

    :goto_11b
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v12, Landroid/content/pm/SigningDetails;

    const/4 v13, 0x4

    invoke-direct {v12, v4, v13, v8}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v12, v13}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_12c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_92 .. :try_end_12c} :catch_176
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_12c} :catch_14f
    .catchall {:try_start_92 .. :try_end_12c} :catchall_14d

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catch_133
    move-exception v0

    :try_start_134
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "V4 verification failed to collect V2/V3 certificates from : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_14d
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_134 .. :try_end_14d} :catch_176
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_14d} :catch_14f
    .catchall {:try_start_134 .. :try_end_14d} :catchall_14d

    :catchall_14d
    move-exception v0

    goto :goto_179

    :catch_14f
    move-exception v0

    const/16 v3, -0x67

    :try_start_152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_16f
    .catchall {:try_start_152 .. :try_end_16f} :catchall_14d

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catch_176
    move-exception v0

    nop

    :try_start_178
    throw v0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_14d

    :goto_179
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
