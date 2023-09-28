# classes.dex

.class public final Landroid/hardware/camera2/utils/HashCodeHelpers;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hashCode([F)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_16

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    shl-int/lit8 v5, v1, 0x5

    sub-int/2addr v5, v1

    xor-int v1, v5, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    return v1
.end method

.method public static varargs hashCode([I)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_12

    aget v3, p0, v0

    shl-int/lit8 v4, v1, 0x5

    sub-int/2addr v4, v1

    xor-int v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return v1
.end method

.method public static varargs hashCodeGeneric([Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    array-length v2, p0

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_1b

    aget-object v4, p0, v3

    if-nez v4, :cond_f

    move v5, v0

    goto :goto_13

    :cond_f
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_13
    shl-int/lit8 v6, v1, 0x5

    sub-int/2addr v6, v1

    xor-int v1, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1b
    return v1
.end method
