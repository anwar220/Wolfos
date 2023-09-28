# classes4.dex

.class Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateBodyLength(I)I
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-le p0, v1, :cond_1a

    const/4 v1, 0x1

    move v2, p0

    :goto_7
    ushr-int/lit8 v3, v2, 0x8

    move v2, v3

    if-eqz v3, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v3, v3, 0x8

    :goto_13
    if-ltz v3, :cond_1a

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_13

    :cond_1a
    return v0
.end method

.method static calculateTagLength(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1f

    if-lt p0, v1, :cond_28

    const/16 v1, 0x80

    if-ge p0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_c
    const/4 v2, 0x5

    new-array v2, v2, [B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, p0, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_17
    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, p0, 0x7f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v4, 0x7f

    if-gt p0, v4, :cond_17

    array-length v1, v2

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_28
    :goto_28
    return v0
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .registers 7

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result v0

    return v0

    :cond_c
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result v0

    return v0

    :cond_18
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    :cond_24
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_42

    :try_start_2b
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_41

    goto :goto_3a

    :cond_39
    move-wide v3, v1

    :goto_3a
    cmp-long v5, v3, v1

    if-gez v5, :cond_40

    long-to-int v1, v3

    return v1

    :cond_40
    goto :goto_42

    :catch_41
    move-exception v0

    :cond_42
    :goto_42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_52

    const v0, 0x7fffffff

    return v0

    :cond_52
    long-to-int v0, v3

    return v0
.end method
