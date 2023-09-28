# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Bits;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitPermuteStep(III)I
    .registers 5

    ushr-int v0, p0, p2

    xor-int/2addr v0, p0

    and-int/2addr v0, p1

    shl-int v1, v0, p2

    xor-int/2addr v1, v0

    xor-int/2addr v1, p0

    return v1
.end method

.method public static bitPermuteStep(JJI)J
    .registers 9

    ushr-long v0, p0, p4

    xor-long/2addr v0, p0

    and-long/2addr v0, p2

    shl-long v2, v0, p4

    xor-long/2addr v2, v0

    xor-long/2addr v2, p0

    return-wide v2
.end method

.method public static bitPermuteStepSimple(III)I
    .registers 5

    and-int v0, p0, p1

    shl-int/2addr v0, p2

    ushr-int v1, p0, p2

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static bitPermuteStepSimple(JJI)J
    .registers 9

    and-long v0, p0, p2

    shl-long/2addr v0, p4

    ushr-long v2, p0, p4

    and-long/2addr v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method
