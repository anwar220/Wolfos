# classes.dex

.class public Landroid/app/Notification$Colors;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mContrastColor:I

.field private mErrorColor:I

.field private mOnAccentTextColor:I

.field private mPaletteIsForColorized:Z

.field private mPaletteIsForNightMode:Z

.field private mPaletteIsForRawColor:I

.field private mPrimaryAccentColor:I

.field private mPrimaryTextColor:I

.field private mProtectionColor:I

.field private mRippleAlpha:I

.field private mSecondaryAccentColor:I

.field private mSecondaryTextColor:I

.field private mTertiaryAccentColor:I


# direct methods
.method static bridge synthetic -$$Nest$smflattenAlpha(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method private static calculateContrastColor(Landroid/content/Context;IIIZ)I
    .registers 7

    if-nez p1, :cond_b

    move v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    :cond_f
    :goto_f
    invoke-static {v0, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v1

    return v1
.end method

.method private static flattenAlpha(II)I
    .registers 4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_a

    move v0, p0

    goto :goto_e

    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result v0

    :goto_e
    return v0
.end method

.method private static getColor(Landroid/content/res/TypedArray;II)I
    .registers 4

    if-nez p0, :cond_4

    move v0, p2

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_8
    return v0
.end method

.method private static obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBackgroundColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return v0
.end method

.method public getContrastColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return v0
.end method

.method public getErrorColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return v0
.end method

.method public getOnAccentTextColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    return v0
.end method

.method public getPrimaryAccentColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return v0
.end method

.method public getPrimaryTextColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return v0
.end method

.method public getProtectionColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return v0
.end method

.method public getRippleAlpha()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return v0
.end method

.method public getSecondaryAccentColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return v0
.end method

.method public getTertiaryAccentColor()I
    .registers 2

    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return v0
.end method

.method public resolvePalette(Landroid/content/Context;IZZ)V
    .registers 10

    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_d

    return-void

    :cond_d
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_7d

    if-nez p2, :cond_3d

    new-array v3, v2, [I

    const v4, 0x1120026

    aput v4, v3, v1

    invoke-static {p1, v3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    :try_start_25
    invoke-static {v4, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_31

    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    :cond_30
    goto :goto_3f

    :catchall_31
    move-exception v0

    if-eqz v4, :cond_3c

    :try_start_34
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw v0

    :cond_3d
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    :goto_3f
    iput v2, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const-wide/high16 v3, 0x4012000000000000L  # 4.5

    invoke-static {v0, v1, v3, v4}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v0, v1, v3, v4}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_132

    :cond_7d
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_150

    invoke-static {p1, v3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    if-eqz p4, :cond_8c

    const/high16 v0, -0x1000000

    :cond_8c
    :try_start_8c
    invoke-static {v4, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v4, v2, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    const/4 v0, 0x2

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    const/4 v0, 0x3

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    const/4 v0, 0x4

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    const/4 v0, 0x5

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    const/4 v0, 0x6

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    const/4 v0, 0x7

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    const/16 v0, 0x8

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    const/16 v0, 0x9

    const v1, 0x33ffffff

    invoke-static {v4, v0, v1}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_d9
    .catchall {:try_start_8c .. :try_end_d9} :catchall_144

    if-eqz v4, :cond_de

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    :cond_de
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, v0, v1, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    if-ne v0, v2, :cond_f4

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    :cond_f4
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    if-ne v0, v2, :cond_100

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    :cond_100
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    if-ne v0, v2, :cond_108

    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    :cond_108
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    if-ne v0, v2, :cond_110

    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    :cond_110
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne v0, v2, :cond_118

    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    :cond_118
    iget v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    if-ne v0, v2, :cond_12a

    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    :cond_12a
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne v0, v2, :cond_132

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    :cond_132
    :goto_132
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    if-ne v0, v2, :cond_143

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const v2, 0x3f4ccccd  # 0.8f

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    :cond_143
    return-void

    :catchall_144
    move-exception v0

    if-eqz v4, :cond_14f

    :try_start_147
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_14b

    goto :goto_14f

    :catchall_14b
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14f
    :goto_14f
    throw v0

    :array_150
    .array-data 4
        0x112002d
        0x10104e2
        0x1010036
        0x1010038
        0x1010435
        0x1120026
        0x1120028
        0x11200f1
        0x1010543
        0x101042c
    .end array-data
.end method
