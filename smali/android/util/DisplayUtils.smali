# classes3.dex

.class public Landroid/util/DisplayUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_23

    :cond_a
    const v1, 0x1070048

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move v0, v3

    goto :goto_22

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_22
    :goto_22
    return v0

    :cond_23
    :goto_23
    return v0
.end method

.method public static getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;
    .registers 7

    if-eqz p0, :cond_1d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_1d

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1c

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-le v5, v0, :cond_19

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    move-object v1, v4

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1c
    return-object v1

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPhysicalPixelDisplaySizeRatio(IIII)F
    .registers 7

    if-ne p0, p2, :cond_7

    if-ne p1, p3, :cond_7

    const/high16 v0, 0x3f800000  # 1.0f

    return v0

    :cond_7
    int-to-float v0, p2

    int-to-float v1, p0

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method
