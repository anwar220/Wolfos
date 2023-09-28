# classes3.dex

.class public Landroid/util/GMSDownscaleStub;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_DOWNSCALE_CLOSED:I = -0x1

.field public static final STATE_DOWNSCALE_NORMAL:I = 0x1

.field public static sIsMiuiWindowDownScale:Z


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GMSDownscaleStub"

    iput-object v0, p0, Landroid/util/GMSDownscaleStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Landroid/util/GMSDownscaleStub;
    .registers 1

    const-class v0, Landroid/util/GMSDownscaleStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/GMSDownscaleStub;

    return-object v0
.end method


# virtual methods
.method public applyToConfiguration(Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/content/res/Configuration;II)Z
    .registers 7

    const/4 v0, 0x0

    return v0
.end method

.method public applyToDisplayMetricsForDownscale(Landroid/util/DisplayMetrics;)V
    .registers 2

    return-void
.end method

.method public applyToPointForDownscale(Landroid/graphics/Point;)V
    .registers 2

    return-void
.end method

.method public getCompatInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownscaleDensity(I)I
    .registers 3

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    return v0
.end method

.method public getStatusBarHeightForDownscale(ILandroid/content/res/CompatibilityInfo;Landroid/content/res/Resources;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public setCompatInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 2

    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
