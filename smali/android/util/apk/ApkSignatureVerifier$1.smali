# classes3.dex

.class Landroid/util/apk/ApkSignatureVerifier$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apkPath:Ljava/lang/String;

.field final synthetic val$entry:Ljava/util/zip/ZipEntry;

.field final synthetic val$input:Landroid/content/pm/parsing/result/ParseInput;

.field final synthetic val$jarFile:[Landroid/util/jar/StrictJarFile;

.field final synthetic val$lastSigs:[Landroid/content/pm/Signature;

.field final synthetic val$strictJarFiles:Landroid/util/ArrayMap;

.field final synthetic val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;


# direct methods
.method constructor <init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Landroid/content/pm/parsing/result/ParseInput;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V
    .registers 8

    iput-object p1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object p2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    iput-object p3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$jarFile:[Landroid/util/jar/StrictJarFile;

    iput-object p4, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$input:Landroid/content/pm/parsing/result/ParseInput;

    iput-object p5, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    iput-object p6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    iput-object p7, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$lastSigs:[Landroid/content/pm/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v0, v0, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_23

    const-string v0, "ApkSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerifyV1 exit with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v2, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_32
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_32} :catch_113
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_32} :catch_113
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_32} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_e9

    :try_start_32
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/jar/StrictJarFile;

    if-nez v2, :cond_5d

    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v3, v3, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    invoke-static {}, Landroid/util/apk/ApkSignatureVerifier;->-$$Nest$sfgetNUMBER_OF_CORES()I

    move-result v4

    if-lt v3, v4, :cond_4b

    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/4 v4, 0x0

    iput v4, v3, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    :cond_4b
    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$jarFile:[Landroid/util/jar/StrictJarFile;

    iget-object v4, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v5, v4, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    aget-object v3, v3, v5

    move-object v2, v3

    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_32 .. :try_end_5e} :catchall_e6

    :try_start_5e
    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$input:Landroid/content/pm/parsing/result/ParseInput;

    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-static {v1, v2, v3}, Landroid/util/apk/ApkSignatureVerifier;->-$$Nest$smloadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_dc

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/security/cert/Certificate;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->-$$Nest$smconvertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    iget-object v5, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$lastSigs:[Landroid/content/pm/Signature;

    invoke-static {v5, v4}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v5

    if-eqz v5, :cond_86

    goto/16 :goto_124

    :cond_86
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has mismatched certificates at entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b1
    new-instance v4, Landroid/util/apk/SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no certificates at entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_dc
    new-instance v3, Ljava/lang/SecurityException;

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_e6
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_5e .. :try_end_e6} :catch_113
    .catch Ljava/lang/SecurityException; {:try_start_5e .. :try_end_e6} :catch_113
    .catch Ljava/security/GeneralSecurityException; {:try_start_5e .. :try_end_e6} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_e6} :catch_e9

    :catchall_e6
    move-exception v2

    :try_start_e7
    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    :try_start_e8
    throw v2
    :try_end_e9
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_e8 .. :try_end_e9} :catch_113
    .catch Ljava/lang/SecurityException; {:try_start_e8 .. :try_end_e9} :catch_113
    .catch Ljava/security/GeneralSecurityException; {:try_start_e8 .. :try_end_e9} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_e9} :catch_e9

    :catch_e9
    move-exception v0

    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v1

    :try_start_ef
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/16 v3, -0x68

    iput v3, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object v0, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    monitor-exit v1

    goto :goto_125

    :catchall_fb
    move-exception v2

    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_ef .. :try_end_fd} :catchall_fb

    throw v2

    :catch_fe
    move-exception v0

    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v1

    :try_start_104
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/16 v3, -0x69

    iput v3, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object v0, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    monitor-exit v1

    goto :goto_124

    :catchall_110
    move-exception v2

    monitor-exit v1
    :try_end_112
    .catchall {:try_start_104 .. :try_end_112} :catchall_110

    throw v2

    :catch_113
    move-exception v0

    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v1

    :try_start_119
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/16 v3, -0x67

    iput v3, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object v0, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    monitor-exit v1

    :goto_124
    nop

    :goto_125
    return-void

    :catchall_126
    move-exception v2

    monitor-exit v1
    :try_end_128
    .catchall {:try_start_119 .. :try_end_128} :catchall_126

    throw v2
.end method
