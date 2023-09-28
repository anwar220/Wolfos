# classes3.dex

.class public final Landroid/util/PackageUtils;
.super Ljava/lang/Object;


# static fields
.field private static final HIGH_RAM_BUFFER_SIZE_BYTES:I = 0xf4240

.field private static final LOW_RAM_BUFFER_SIZE_BYTES:I = 0x3e8


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSha256Digest([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    const/4 v1, 0x1

    if-nez p1, :cond_10

    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    array-length v2, v0

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_21

    aget-byte v5, v0, v4

    invoke-static {v5, v1}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_21
    invoke-static {p1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static computeSha256DigestBytes([B)[B
    .registers 3

    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_f

    nop

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    :catch_f
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeSha256DigestForLargeFile(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_a} :catch_4a

    nop

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_10
    new-instance v3, Ljava/security/DigestInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    :goto_1a
    invoke-virtual {v3, p1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_45

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    goto :goto_1a

    :cond_22
    nop

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v3, 0x1

    if-nez p2, :cond_2f

    invoke-static {v0, v3}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2f
    array-length v4, v0

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_33
    if-ge v6, v4, :cond_40

    aget-byte v7, v0, v6

    invoke-static {v7, v3}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_40
    invoke-static {p2, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_45
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :catch_4a
    move-exception v1

    return-object v0
.end method

.method public static computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-static {p0, v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    aget-object v0, p0, v1

    return-object v0

    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v2, p0

    :goto_11
    if-ge v1, v2, :cond_21

    aget-object v3, p0, v1

    :try_start_15
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    move-exception v4

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_15

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    return-object v1
.end method

.method public static createLargeFileBuffer()[B
    .registers 2

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x3e8

    goto :goto_c

    :cond_9
    const v0, 0xf4240

    :goto_c
    new-array v1, v0, [B

    return-object v1
.end method
