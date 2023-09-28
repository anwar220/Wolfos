# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 7

    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-lez p2, :cond_13

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    int-to-byte v1, v1

    goto :goto_1f

    :cond_13
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    int-to-byte v1, v1

    :goto_1f
    array-length v2, p1

    if-ge p2, v2, :cond_27

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_27
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    const-string v0, "TBC"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public padCount([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-lez v1, :cond_13

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    if-ne v2, v0, :cond_13

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_13
    array-length v2, p1

    sub-int/2addr v2, v1

    return v2
.end method
