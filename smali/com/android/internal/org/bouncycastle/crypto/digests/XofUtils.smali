# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static leftEncode(J)[B
    .registers 10

    const/4 v0, 0x1

    move-wide v1, p0

    :goto_2
    const/16 v3, 0x8

    shr-long v4, v1, v3

    move-wide v1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_2

    :cond_11
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    const/4 v5, 0x1

    :goto_19
    if-gt v5, v0, :cond_27

    sub-int v6, v0, v5

    mul-int/2addr v6, v3

    shr-long v6, p0, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_27
    return-object v4
.end method

.method public static rightEncode(J)[B
    .registers 10

    const/4 v0, 0x1

    move-wide v1, p0

    :goto_2
    const/16 v3, 0x8

    shr-long v4, v1, v3

    move-wide v1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_2

    :cond_11
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    aput-byte v0, v4, v0

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v0, :cond_28

    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v3

    shr-long v6, p0, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_28
    return-object v4
.end method
