# classes.dex

.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final HAS_OVERRIDE_SCALING:I = 0x20

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final MIUI_COMPAT_REQUIRED:I = 0x100000

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field static final TAG:Ljava/lang/String; = "CompatibilityInfo"

.field public static sIsMiuiScreenCompatApp:Z

.field public static sMiuiScreenCompatInfo:Landroid/os/Bundle;


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I

.field private miuiScreenCompatInfo:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    return-void
.end method

.method private constructor <init>(IIFF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->miuiScreenCompatInfo:Landroid/os/Bundle;

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZF)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->miuiScreenCompatInfo:Landroid/os/Bundle;

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_f

    or-int/lit8 v0, v0, 0x10

    :cond_f
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v1, :cond_d7

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v1, :cond_d7

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v1, :cond_1f

    goto/16 :goto_d7

    :cond_1f
    const/4 v1, 0x2

    const/16 v3, 0x8

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_33

    or-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-nez p4, :cond_33

    or-int/lit8 v5, v5, 0x22

    :cond_33
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_3f

    const/4 v6, 0x1

    if-nez p4, :cond_3f

    or-int/lit8 v5, v5, 0x22

    :cond_3f
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_48

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x2

    :cond_48
    if-eqz p4, :cond_4c

    and-int/lit8 v5, v5, -0x3

    :cond_4c
    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_176

    goto :goto_70

    :pswitch_54  #0x4
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_5a

    and-int/lit8 v0, v0, -0x9

    :cond_5a
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_70

    or-int/lit8 v0, v0, 0x4

    goto :goto_70

    :pswitch_62  #0x3
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_68

    and-int/lit8 v0, v0, -0x9

    :cond_68
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_70

    or-int/lit8 v0, v0, 0x4

    :cond_70
    :goto_70
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_81

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_7c

    and-int/lit8 v0, v0, -0x9

    goto :goto_85

    :cond_7c
    if-nez v6, :cond_85

    or-int/lit8 v0, v0, 0x2

    goto :goto_85

    :cond_81
    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x4

    :cond_85
    :goto_85
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v7

    iget v8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-nez v8, :cond_a1

    const/16 v8, 0xa0

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000  # 160.0f

    div-float/2addr v8, v9

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, v8

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v0, v0, 0x1

    goto :goto_c2

    :cond_a1
    if-nez v7, :cond_b1

    cmpl-float v8, p5, v2

    if-eqz v8, :cond_a8

    goto :goto_b1

    :cond_a8
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_c2

    :cond_b1
    :goto_b1
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, p5

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v8, v2

    float-to-int v2, v8

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    or-int/lit8 v0, v0, 0x20

    :goto_c2
    move-object v2, p1

    invoke-interface {v2}, Landroid/content/pm/IMiuiApplicationInfo;->getMiuiFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_127

    const v8, 0x100008

    or-int/2addr v0, v8

    invoke-interface {v2}, Landroid/content/pm/IMiuiApplicationInfo;->getMiuiScreenCompatInfo()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/res/CompatibilityInfo;->setMiuiScreenCompatInfo(Landroid/os/Bundle;)V

    goto :goto_127

    :cond_d7
    :goto_d7
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v1, :cond_de

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_e0

    :cond_de
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_e0
    nop

    if-nez v1, :cond_e5

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    :cond_e5
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_ec

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_ed

    :cond_ec
    move v3, v1

    :goto_ed
    if-ge v3, v1, :cond_f0

    move v3, v1

    :cond_f0
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/16 v5, 0x140

    if-le v1, v5, :cond_f9

    or-int/lit8 v0, v0, 0x4

    goto :goto_109

    :cond_f9
    if-eqz v4, :cond_100

    if-le p3, v4, :cond_100

    or-int/lit8 v0, v0, 0xa

    goto :goto_109

    :cond_100
    if-lt v3, p3, :cond_105

    or-int/lit8 v0, v0, 0x4

    goto :goto_109

    :cond_105
    if-eqz p4, :cond_109

    or-int/lit8 v0, v0, 0x8

    :cond_109
    :goto_109
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v5

    if-eqz v5, :cond_11e

    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, v6

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v0, v0, 0x1

    goto :goto_126

    :cond_11e
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    :goto_126
    nop

    :cond_127
    :goto_127
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCompatibilityFlags - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompatibilityInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationDensity - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationScale - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_176
    .packed-switch 0x3
        :pswitch_62  #00000003
        :pswitch_54  #00000004
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->miuiScreenCompatInfo:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->miuiScreenCompatInfo:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 15

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ge v0, v1, :cond_9

    move v2, v0

    move v3, v1

    goto :goto_b

    :cond_9
    move v2, v1

    move v3, v0

    :goto_b
    const/high16 v4, 0x43a00000  # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000  # 0.5f

    add-float/2addr v5, v4

    float-to-int v5, v5

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_21

    const v6, 0x3fe3bbbc

    :cond_21
    int-to-float v7, v5

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    if-ge v0, v1, :cond_2a

    move v7, v5

    move v8, v4

    goto :goto_2c

    :cond_2a
    move v7, v4

    move v8, v5

    :goto_2c
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    cmpg-float v11, v9, v10

    if-gez v11, :cond_38

    move v11, v9

    goto :goto_39

    :cond_38
    move v11, v10

    :goto_39
    const/high16 v12, 0x3f800000  # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_41

    const/high16 v11, 0x3f800000  # 1.0f

    :cond_41
    if-eqz p1, :cond_47

    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_47
    return v11
.end method

.method public static overrideDisplayMetricesIfNeed(Landroid/util/DisplayMetrics;)V
    .registers 4

    sget-object v0, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v1, "miuiScreenCompatDensityDpi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget-object v0, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "miuiScreenCompatDensity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    sget-object v0, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    sget-object v1, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "miuiScreenCompatScale"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    sget-object v1, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v0, v0

    sget-object v1, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    int-to-float v0, v0

    sget-object v1, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return-void
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .registers 2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    sget-boolean v0, Landroid/content/res/CompatibilityInfo;->sIsMiuiScreenCompatApp:Z

    if-nez v0, :cond_1e

    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1e
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    :cond_4f
    sget-boolean v0, Landroid/content/res/CompatibilityInfo;->sIsMiuiScreenCompatApp:Z

    if-eqz v0, :cond_60

    sget-object v0, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_60

    const-string/jumbo v1, "miuiScreenCompatDensityDpi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_60
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    sget-boolean v0, Landroid/content/res/CompatibilityInfo;->sIsMiuiScreenCompatApp:Z

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/content/res/CompatibilityInfo;->overrideDisplayMetricesIfNeed(Landroid/util/DisplayMetrics;)V

    goto :goto_1d

    :cond_15
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_53

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_53
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    move-object v2, p1

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_f

    return v1

    :cond_f
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_16

    return v1

    :cond_16
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1f

    return v1

    :cond_1f
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_23} :catch_29

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_28

    return v1

    :cond_28
    return v0

    :catch_29
    move-exception v0

    return v1
.end method

.method public getMiuiScreenCompatInfo()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/content/res/CompatibilityInfo;->miuiScreenCompatInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public isScalingRequired()Z
    .registers 2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x21

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public miuiCompatRequired()Z
    .registers 3

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public needsCompatResources()Z
    .registers 2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public neverSupportsScreen()Z
    .registers 2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setMiuiScreenCompatInfo(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->miuiScreenCompatInfo:Landroid/os/Bundle;

    goto :goto_e

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->miuiScreenCompatInfo:Landroid/os/Bundle;

    :goto_e
    return-void
.end method

.method public supportsScreen()Z
    .registers 3

    sget-boolean v0, Landroid/content/res/CompatibilityInfo;->sIsMiuiScreenCompatApp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/content/res/CompatibilityInfo;->miuiScreenCompatInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
