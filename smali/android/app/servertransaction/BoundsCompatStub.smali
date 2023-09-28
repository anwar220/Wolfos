# classes.dex

.class public Landroid/app/servertransaction/BoundsCompatStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/BoundsCompatStub$State;
    }
.end annotation


# static fields
.field protected static final BOUNDS_COMPAT_ENABLED:I = 0xf

.field protected static final CUSTOM_ASPECT_RATIO_MODE_ENABLED:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/app/servertransaction/BoundsCompatStub;
    .registers 1

    const-class v0, Landroid/app/servertransaction/BoundsCompatStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/BoundsCompatStub;

    return-object v0
.end method


# virtual methods
.method public adaptCompatBounds(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Configuration;)V
    .registers 3

    return-void
.end method

.method public adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    return-void
.end method

.method public computeCompatBounds(FLandroid/content/res/Configuration;II)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public computeCompatBounds(FLandroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public computeCompatBounds(FLandroid/graphics/Point;I)Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getCompatConfiguration(Landroid/content/res/Configuration;F)Landroid/content/res/Configuration;
    .registers 4

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public isBoundsCompatEnabled(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isCustomAspectRatioModeEnabled(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayCompatModeEnabled(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isFixedAspectRatioModeEnabled(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isMaxAspectRatioApplied(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isMinAspectRatioApplied(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public needsCompatBounds(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
