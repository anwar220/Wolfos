# classes4.dex

.class public final Lcom/android/internal/org/bouncycastle/util/io/Streams;
.super Ljava/lang/Object;


# static fields
.field private static BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1000

    sput v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v0, [B

    :goto_4
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_d

    goto :goto_4

    :cond_d
    return-void
.end method

.method public static pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v0, [B

    :goto_4
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v3, v1

    if-ltz v1, :cond_11

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_11
    return-void
.end method

.method public static pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    sget v2, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v2, v2, [B

    :goto_6
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v5, v3

    if-ltz v3, :cond_24

    sub-long v6, p1, v0

    int-to-long v8, v5

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1c

    int-to-long v6, v5

    add-long/2addr v0, v6

    invoke-virtual {p3, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    :cond_1c
    new-instance v3, Lcom/android/internal/org/bouncycastle/util/io/StreamOverflowException;

    const-string v4, "Data Overflow"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    return-wide v0
.end method

.method public static readAll(Ljava/io/InputStream;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static readAllLimited(Ljava/io/InputStream;I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_10

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_e

    goto :goto_10

    :cond_e
    add-int/2addr v0, v1

    goto :goto_1

    :cond_10
    :goto_10
    return v0
.end method

.method public static writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
