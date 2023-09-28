# classes2.dex

.class Landroid/media/ExifInterfaceUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifInterface"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_24

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4

    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "Error closing fd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_a

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public static convertToLongArray(Ljava/lang/Object;)[J
    .registers 6

    instance-of v0, p0, [I

    if-eqz v0, :cond_17

    move-object v0, p0

    check-cast v0, [I

    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_16

    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    return-object v1

    :cond_17
    instance-of v0, p0, [J

    if-eqz v0, :cond_1f

    move-object v0, p0

    check-cast v0, [J

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_5
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_13

    add-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    :cond_13
    return v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    const/16 v1, 0x2000

    new-array v2, v1, [B

    :goto_5
    if-lez v0, :cond_1f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v3, :cond_17

    sub-int/2addr v0, v5

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to copy the given amount of bytes from the inputstream to the output stream."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    return-void
.end method

.method public static startsWith([B[B)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-nez p1, :cond_6

    goto :goto_23

    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    :cond_b
    array-length v1, p0

    if-eqz v1, :cond_22

    array-length v1, p1

    if-nez v1, :cond_12

    goto :goto_22

    :cond_12
    const/4 v1, 0x0

    :goto_13
    array-length v2, p1

    if-ge v1, v2, :cond_20

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    :goto_22
    return v0

    :cond_23
    :goto_23
    return v0
.end method
