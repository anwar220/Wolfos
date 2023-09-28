# classes4.dex

.class public Lcom/android/internal/policy/ScreenDecorationsUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiuiWindowCornerRadius(Landroid/content/Context;)F
    .registers 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_4e

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    if-eqz v4, :cond_4e

    nop

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getRoundedCornerRadius(Landroid/view/RoundedCorner;)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getRoundedCornerRadius(Landroid/view/RoundedCorner;)F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getRoundedCornerRadius(Landroid/view/RoundedCorner;)F

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getRoundedCornerRadius(Landroid/view/RoundedCorner;)F

    move-result v6

    invoke-static {v3, v4}, Lcom/android/internal/policy/ScreenDecorationsUtils;->minRadius(FF)F

    move-result v7

    invoke-static {v6, v5}, Lcom/android/internal/policy/ScreenDecorationsUtils;->minRadius(FF)F

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/policy/ScreenDecorationsUtils;->minRadius(FF)F

    move-result v7

    cmpl-float v2, v7, v2

    if-lez v2, :cond_4e

    return v7

    :cond_4e
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v2

    return v2
.end method

.method private static getRoundedCornerRadius(Landroid/view/RoundedCorner;)F
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getWindowCornerRadius(Landroid/content/Context;)F
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v5, v4, v2

    if-nez v5, :cond_2d

    move v4, v3

    :cond_2d
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v5, v2

    if-nez v2, :cond_3c

    move v5, v3

    :cond_3c
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private static minRadius(FF)F
    .registers 4

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_6

    return p1

    :cond_6
    cmpl-float v0, p1, v0

    if-nez v0, :cond_b

    return p0

    :cond_b
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x11101cf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
