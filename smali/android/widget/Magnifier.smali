# classes4.dex

.class public final Landroid/widget/Magnifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Magnifier$Callback;,
        Landroid/widget/Magnifier$SourceBound;,
        Landroid/widget/Magnifier$Builder;,
        Landroid/widget/Magnifier$InternalPopupWindow;,
        Landroid/widget/Magnifier$SurfaceInfo;
    }
.end annotation


# static fields
.field private static final FISHEYE_RAMP_WIDTH:F = 12.0f

.field private static final NONEXISTENT_PREVIOUS_CONFIG_VALUE:I = -0x1

.field public static final SOURCE_BOUND_MAX_IN_SURFACE:I = 0x0

.field public static final SOURCE_BOUND_MAX_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Magnifier"

.field private static final sPixelCopyHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mBottomContentBound:I

.field private mCallback:Landroid/widget/Magnifier$Callback;

.field private final mClampedCenterZoomCoords:Landroid/graphics/Point;

.field private final mClippingEnabled:Z

.field private mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private mCursorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDefaultHorizontalSourceToMagnifierOffset:I

.field private final mDefaultVerticalSourceToMagnifierOffset:I

.field private mDirtyState:Z

.field private mDrawCursorEnabled:Z

.field private mIsFishEyeStyle:Z

.field private mLeftContentBound:I

.field private mLeftCutWidth:I

.field private final mLock:Ljava/lang/Object;

.field private final mOverlay:Landroid/graphics/drawable/Drawable;

.field private mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private final mPixelCopyRequestRect:Landroid/graphics/Rect;

.field private final mPrevShowSourceCoords:Landroid/graphics/PointF;

.field private final mPrevShowWindowCoords:Landroid/graphics/PointF;

.field private final mPrevStartCoordsInSurface:Landroid/graphics/Point;

.field private final mRamp:I

.field private mRightContentBound:I

.field private mRightCutWidth:I

.field private mSourceHeight:I

.field private mSourceWidth:I

.field private mTopContentBound:I

.field private final mView:Landroid/view/View;

.field private final mViewCoordinatesInSurface:[I

.field private mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

.field private final mWindowCoords:Landroid/graphics/Point;

.field private final mWindowCornerRadius:F

.field private final mWindowElevation:F

.field private mWindowHeight:I

.field private final mWindowWidth:I

.field private mZoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "magnifier pixel copy result handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/widget/Magnifier;->createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Magnifier;-><init>(Landroid/widget/Magnifier$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/Magnifier$Builder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000  # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    iput v0, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmView(Landroid/widget/Magnifier$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$Builder;)I

    move-result v2

    iput v2, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmZoom(Landroid/widget/Magnifier$Builder;)F

    move-result v2

    iput v2, p0, Landroid/widget/Magnifier;->mZoom:F

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmIsFishEyeStyle(Landroid/widget/Magnifier$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmSourceWidth(Landroid/widget/Magnifier$Builder;)I

    move-result v2

    if-lez v2, :cond_73

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmSourceHeight(Landroid/widget/Magnifier$Builder;)I

    move-result v2

    if-lez v2, :cond_73

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmSourceWidth(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmSourceHeight(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    goto :goto_89

    :cond_73
    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v1, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    :goto_89
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmElevation(Landroid/widget/Magnifier$Builder;)F

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mWindowElevation:F

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmCornerRadius(Landroid/widget/Magnifier$Builder;)F

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmOverlay(Landroid/widget/Magnifier$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmHorizontalDefaultSourceToMagnifierOffset(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmVerticalDefaultSourceToMagnifierOffset(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmClippingEnabled(Landroid/widget/Magnifier$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmLeftContentBound(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mLeftContentBound:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmTopContentBound(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mTopContentBound:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmRightContentBound(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mRightContentBound:I

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmBottomContentBound(Landroid/widget/Magnifier$Builder;)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier;->mBottomContentBound:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v1, 0x1

    const/high16 v2, 0x41400000  # 12.0f

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Magnifier;->mRamp:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Magnifier$Builder;Landroid/widget/Magnifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Magnifier;-><init>(Landroid/widget/Magnifier$Builder;)V

    return-void
.end method

.method static createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;
    .registers 8

    new-instance v0, Landroid/widget/Magnifier$Builder;

    invoke-direct {v0, p0}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Magnifier:[I

    const/4 v3, 0x0

    const v4, 0x1120084

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmWidth(Landroid/widget/Magnifier$Builder;I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmHeight(Landroid/widget/Magnifier$Builder;I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-static {v0, v6}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmElevation(Landroid/widget/Magnifier$Builder;F)V

    invoke-static {v1}, Landroid/widget/Magnifier;->getDeviceDefaultDialogCornerRadius(Landroid/content/Context;)F

    move-result v6

    invoke-static {v0, v6}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmCornerRadius(Landroid/widget/Magnifier$Builder;F)V

    const/4 v6, 0x6

    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmZoom(Landroid/widget/Magnifier$Builder;F)V

    nop

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmHorizontalDefaultSourceToMagnifierOffset(Landroid/widget/Magnifier$Builder;I)V

    nop

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmVerticalDefaultSourceToMagnifierOffset(Landroid/widget/Magnifier$Builder;I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmOverlay(Landroid/widget/Magnifier$Builder;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmClippingEnabled(Landroid/widget/Magnifier$Builder;Z)V

    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmLeftContentBound(Landroid/widget/Magnifier$Builder;I)V

    invoke-static {v0, v5}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmTopContentBound(Landroid/widget/Magnifier$Builder;I)V

    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmRightContentBound(Landroid/widget/Magnifier$Builder;I)V

    invoke-static {v0, v5}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmBottomContentBound(Landroid/widget/Magnifier$Builder;I)V

    return-object v0
.end method

.method private getCurrentClampedWindowCoordinates()Landroid/graphics/Point;
    .registers 8

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmIsMainWindowSurface(Landroid/widget/Magnifier$SurfaceInfo;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget-object v3, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v3}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v4}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v4}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v4

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v5

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v6}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    goto :goto_71

    :cond_5f
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_71
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private static getDeviceDefaultDialogCornerRadius(Landroid/content/Context;)F
    .registers 5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010571

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method public static getMagnifierDefaultSize()Landroid/graphics/PointF;
    .registers 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    const v3, 0x1050126

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    const v3, 0x1050123

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method private maybeDrawCursor(Landroid/graphics/Canvas;)V
    .registers 8

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mDrawCursorEnabled:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/widget/Magnifier;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/Magnifier;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3d

    :cond_1f
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    invoke-direct {v2, v4, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private obtainContentCoordinates(FF)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    iget-object v6, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInSurface([I)V

    iget-object v1, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v6, v1, v2

    if-ne v6, v3, :cond_19

    aget v1, v1, v4

    if-eq v1, v5, :cond_1b

    :cond_19
    iput-boolean v4, v0, Landroid/widget/Magnifier;->mDirtyState:Z

    :cond_1b
    iget-object v1, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2a

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_3c

    :cond_2a
    int-to-float v1, v6

    add-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v6, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v6, v6, v4

    int-to-float v6, v6

    add-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_3c
    const/4 v7, 0x2

    new-array v8, v7, [Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v10}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v10

    iget-object v11, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v11}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v11

    invoke-direct {v9, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v2

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    if-eqz v11, :cond_75

    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    :cond_75
    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v11, v11, Landroid/view/SurfaceView;

    if-eqz v11, :cond_86

    iget-object v11, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v2, v11, v2

    neg-int v2, v2

    aget v11, v11, v4

    neg-int v11, v11

    invoke-virtual {v10, v2, v11}, Landroid/graphics/Rect;->offset(II)V

    :cond_86
    aput-object v10, v8, v4

    const/high16 v2, -0x80000000

    iget v4, v0, Landroid/widget/Magnifier;->mLeftContentBound:I

    :goto_8c
    if-ltz v4, :cond_99

    aget-object v11, v8, v4

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_8c

    :cond_99
    const/high16 v4, -0x80000000

    iget v11, v0, Landroid/widget/Magnifier;->mTopContentBound:I

    :goto_9d
    if-ltz v11, :cond_aa

    aget-object v12, v8, v11

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v11, v11, -0x1

    goto :goto_9d

    :cond_aa
    const v11, 0x7fffffff

    iget v12, v0, Landroid/widget/Magnifier;->mRightContentBound:I

    :goto_af
    if-ltz v12, :cond_bc

    aget-object v13, v8, v12

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v12, -0x1

    goto :goto_af

    :cond_bc
    const v12, 0x7fffffff

    iget v13, v0, Landroid/widget/Magnifier;->mBottomContentBound:I

    :goto_c1
    if-ltz v13, :cond_ce

    aget-object v14, v8, v13

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v13, -0x1

    goto :goto_c1

    :cond_ce
    iget-object v13, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v13}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v13

    iget v14, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    sub-int/2addr v13, v14

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v13, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v13}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v13

    iget v14, v0, Landroid/widget/Magnifier;->mSourceHeight:I

    sub-int/2addr v13, v14

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ltz v2, :cond_ec

    if-gez v4, :cond_f3

    :cond_ec
    const-string v13, "Magnifier"

    const-string v14, "Magnifier\'s content is copied from a surface smaller thanthe content requested size. The magnifier will be dismissed."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f3
    iget v13, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v13, v2

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v13, v0, Landroid/widget/Magnifier;->mSourceHeight:I

    add-int/2addr v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v13, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget-boolean v14, v0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    if-eqz v14, :cond_110

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_120

    :cond_110
    iget v14, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v15, v14, 0x2

    add-int/2addr v15, v2

    div-int/2addr v14, v7

    sub-int v14, v11, v14

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_120
    iput v14, v13, Landroid/graphics/Point;->x:I

    iget-object v13, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v14, v0, Landroid/widget/Magnifier;->mSourceHeight:I

    div-int/lit8 v15, v14, 0x2

    add-int/2addr v15, v4

    div-int/2addr v14, v7

    sub-int v7, v12, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v13, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private obtainSurfaces()V
    .registers 15

    sget-object v0, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v9, :cond_46

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    nop

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWidth()I

    move-result v2

    iget v3, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/graphics/Rect;->right:I

    add-int v11, v2, v3

    nop

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHeight()I

    move-result v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    add-int v12, v2, v3

    new-instance v13, Landroid/widget/Magnifier$SurfaceInfo;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v8, 0x1

    move-object v2, v13

    move-object v4, v9

    move v5, v11

    move v6, v12

    move-object v7, v10

    invoke-direct/range {v2 .. v8}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V

    move-object v0, v13

    :cond_46
    sget-object v1, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/SurfaceView;

    if-eqz v3, :cond_7f

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v11

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v12

    new-instance v13, Landroid/widget/Magnifier$SurfaceInfo;

    iget v6, v12, Landroid/graphics/Rect;->right:I

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    move-object v3, v13

    move-object v4, v2

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V

    move-object v1, v13

    :cond_7f
    sget-object v2, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v0, v2, :cond_85

    move-object v2, v0

    goto :goto_86

    :cond_85
    move-object v2, v1

    :goto_86
    iput-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_90

    move-object v2, v1

    goto :goto_91

    :cond_90
    move-object v2, v0

    :goto_91
    iput-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    return-void
.end method

.method private obtainWindowCoordinates(FF)V
    .registers 10

    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_25

    :cond_11
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v3, v3, v1

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    :goto_25
    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v5, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v5, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v5, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v4, v5, :cond_55

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v2, v6, v2

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v1, v5, v1

    add-int/2addr v4, v1

    iput v4, v2, Landroid/graphics/Point;->y:I

    :cond_55
    return-void
.end method

.method private onPixelCopyFailed()V
    .registers 3

    const-string v0, "Magnifier"

    const-string v1, "Magnifier failed to copy content from the view Surface. It will be dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/widget/Magnifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/Magnifier$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Magnifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performPixelCopy(IIZ)V
    .registers 16

    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmSurface(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmSurface(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_7c

    :cond_15
    invoke-direct {p0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    iget-object v7, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget-object v1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v3, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    return-void

    :cond_4f
    iget v1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v2, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmSurface(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    new-instance v11, Landroid/widget/Magnifier$$ExternalSyntheticLambda1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v7

    move v4, p3

    move-object v5, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/Magnifier$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v9, v10, v8, v11, v1}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void

    :cond_7c
    :goto_7c
    invoke-direct {p0}, Landroid/widget/Magnifier;->onPixelCopyFailed()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_2c

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_2f

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    :cond_2f
    :goto_2f
    return-void
.end method

.method public getContent()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmLock(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmCurrentContent(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getCornerRadius()F
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    return v0
.end method

.method public getDefaultHorizontalSourceToMagnifierOffset()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    return v0
.end method

.method public getDefaultVerticalSourceToMagnifierOffset()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    return v0
.end method

.method public getElevation()F
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mWindowElevation:F

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    return v0
.end method

.method public getOriginalContent()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmLock(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmBitmap(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getOverlay()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-direct {p0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public getSourceHeight()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    return v0
.end method

.method public getSourcePosition()Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public getSourceWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    return v0
.end method

.method public getZoom()F
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mZoom:F

    return v0
.end method

.method public isClippingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    return v0
.end method

.method synthetic lambda$onPixelCopyFailed$2$android-widget-Magnifier()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/Magnifier;->dismiss()V

    iget-object v0, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    :cond_a
    return-void
.end method

.method synthetic lambda$performPixelCopy$1$android-widget-Magnifier(Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V
    .registers 14

    if-eqz p5, :cond_6

    invoke-direct {p0}, Landroid/widget/Magnifier;->onPixelCopyFailed()V

    return-void

    :cond_6
    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eq v1, p1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    if-eqz p2, :cond_18

    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Magnifier$InternalPopupWindow;->setContentPositionForNextDraw(II)V

    :cond_18
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    if-ge v1, v2, :cond_50

    nop

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v7, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr v6, v7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v2, p4, v4, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0, v2}, Landroid/widget/Magnifier;->maybeDrawCursor(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    goto :goto_5d

    :cond_50
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1}, Landroid/widget/Magnifier;->maybeDrawCursor(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1, p4}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    :goto_5d
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_9 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method synthetic lambda$show$0$android-widget-Magnifier(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/graphics/Point;)V
    .registers 7

    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eq v1, p1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Magnifier$InternalPopupWindow;->setContentPositionForNextDraw(II)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setDrawCursor(ZLandroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-boolean p1, p0, Landroid/widget/Magnifier;->mDrawCursorEnabled:Z

    iput-object p2, p0, Landroid/widget/Magnifier;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnOperationCompleteCallback(Landroid/widget/Magnifier$Callback;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_9

    invoke-static {v0, p1}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fputmCallback(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)V

    :cond_9
    return-void
.end method

.method public setZoom(F)V
    .registers 4

    const-string v0, "Zoom should be positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iput p1, p0, Landroid/widget/Magnifier;->mZoom:F

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    goto :goto_16

    :cond_e
    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_16
    iput v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    return-void
.end method

.method public show(FF)V
    .registers 5

    iget v0, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/Magnifier;->show(FFFF)V

    return-void
.end method

.method public show(FFFF)V
    .registers 39

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    invoke-direct/range {p0 .. p2}, Landroid/widget/Magnifier;->obtainContentCoordinates(FF)V

    iget-object v0, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget-object v4, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/widget/Magnifier;->mSourceHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-boolean v5, v1, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_e6

    iget-object v5, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v8, v1, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v8, v8, v7

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iget-object v8, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, v1, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v9, v9, v6

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v1, Landroid/widget/Magnifier;->mSourceWidth:I

    int-to-float v10, v9

    iget v11, v1, Landroid/widget/Magnifier;->mRamp:I

    mul-int/lit8 v12, v11, 0x2

    sub-int v12, v9, v12

    int-to-float v12, v12

    iget v13, v1, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v12, v13

    sub-float/2addr v10, v12

    const/high16 v12, 0x40000000  # 2.0f

    div-float/2addr v10, v12

    int-to-float v9, v9

    div-float/2addr v9, v12

    sub-float v9, v2, v9

    int-to-float v14, v11

    add-float/2addr v14, v9

    const/4 v15, 0x0

    cmpl-float v16, v15, v14

    if-lez v16, :cond_5a

    sub-float v11, v2, v15

    div-float/2addr v11, v13

    sub-float v15, v2, v11

    goto :goto_69

    :cond_5a
    cmpl-float v13, v15, v9

    if-lez v13, :cond_69

    add-float v13, v9, v10

    sub-float v16, v14, v15

    mul-float v16, v16, v10

    int-to-float v11, v11

    div-float v16, v16, v11

    sub-float v15, v13, v16

    :cond_69
    :goto_69
    float-to-int v11, v15

    iget-object v13, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v13, v1, Landroid/widget/Magnifier;->mSourceWidth:I

    int-to-float v13, v13

    div-float/2addr v13, v12

    add-float v12, v2, v13

    iget v13, v1, Landroid/widget/Magnifier;->mRamp:I

    int-to-float v13, v13

    sub-float v13, v12, v13

    iget-object v6, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v17, v6, v13

    if-gez v17, :cond_95

    sub-float v17, v6, v2

    iget v7, v1, Landroid/widget/Magnifier;->mZoom:F

    div-float v17, v17, v7

    add-float v6, v2, v17

    move/from16 p3, v5

    goto :goto_ab

    :cond_95
    cmpg-float v7, v6, v12

    if-gez v7, :cond_a9

    sub-float v7, v12, v10

    sub-float v17, v6, v13

    mul-float v17, v17, v10

    move/from16 p3, v5

    iget v5, v1, Landroid/widget/Magnifier;->mRamp:I

    int-to-float v5, v5

    div-float v17, v17, v5

    add-float v6, v7, v17

    goto :goto_ab

    :cond_a9
    move/from16 p3, v5

    :goto_ab
    float-to-int v5, v6

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v1, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    move/from16 v17, v6

    const/4 v6, 0x0

    aget v7, v7, v6

    add-int/2addr v7, v11

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v11, v1, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v11, v11, v6

    add-int/2addr v11, v5

    iget-object v6, v1, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v6}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, v7, v0

    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v1, Landroid/widget/Magnifier;->mLeftCutWidth:I

    iget v6, v1, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v6, v0

    sub-int/2addr v6, v5

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v1, Landroid/widget/Magnifier;->mRightCutWidth:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v5, p3

    move v6, v0

    goto :goto_eb

    :cond_e6
    move/from16 v5, p3

    move/from16 v8, p4

    move v6, v0

    :goto_eb
    invoke-direct {v1, v5, v8}, Landroid/widget/Magnifier;->obtainWindowCoordinates(FF)V

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_134

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_134

    iget-boolean v0, v1, Landroid/widget/Magnifier;->mDirtyState:Z

    if-eqz v0, :cond_103

    goto :goto_134

    :cond_103
    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v5, v0

    if-nez v0, :cond_11a

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_114

    goto :goto_11a

    :cond_114
    move/from16 v18, v5

    move/from16 v17, v8

    goto/16 :goto_1aa

    :cond_11a
    :goto_11a
    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v0

    iget-object v7, v1, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    sget-object v9, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/widget/Magnifier$$ExternalSyntheticLambda2;

    invoke-direct {v10, v1, v7, v0}, Landroid/widget/Magnifier$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;Landroid/graphics/Point;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v18, v5

    move/from16 v17, v8

    goto/16 :goto_1aa

    :cond_134
    :goto_134
    iget-object v0, v1, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_1a2

    iget-object v7, v1, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_13b
    new-instance v0, Landroid/widget/Magnifier$InternalPopupWindow;

    iget-object v9, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    iget-object v9, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v21

    iget-object v9, v1, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v9}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmSurfaceControl(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/SurfaceControl;

    move-result-object v22

    iget v9, v1, Landroid/widget/Magnifier;->mWindowWidth:I

    iget v10, v1, Landroid/widget/Magnifier;->mWindowHeight:I

    iget v11, v1, Landroid/widget/Magnifier;->mZoom:F

    iget v12, v1, Landroid/widget/Magnifier;->mRamp:I

    iget v13, v1, Landroid/widget/Magnifier;->mWindowElevation:F

    iget v14, v1, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    iget-object v15, v1, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_164

    move/from16 v17, v8

    move-object/from16 v29, v15

    goto :goto_16e

    :cond_164
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;
    :try_end_166
    .catchall {:try_start_13b .. :try_end_166} :catchall_199

    move/from16 v17, v8

    const/4 v8, 0x0

    :try_start_169
    invoke-direct {v15, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v29, v15

    :goto_16e
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v30

    iget-object v8, v1, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    iget-object v15, v1, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;
    :try_end_176
    .catchall {:try_start_169 .. :try_end_176} :catchall_195

    move/from16 v18, v5

    :try_start_178
    iget-boolean v5, v1, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    move-object/from16 v19, v0

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v31, v8

    move-object/from16 v32, v15

    move/from16 v33, v5

    invoke-direct/range {v19 .. v33}, Landroid/widget/Magnifier$InternalPopupWindow;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceControl;IIFIFFLandroid/graphics/drawable/Drawable;Landroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;Z)V

    iput-object v0, v1, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    monitor-exit v7

    goto :goto_1a6

    :catchall_195
    move-exception v0

    move/from16 v18, v5

    goto :goto_19e

    :catchall_199
    move-exception v0

    move/from16 v18, v5

    move/from16 v17, v8

    :goto_19e
    monitor-exit v7
    :try_end_19f
    .catchall {:try_start_178 .. :try_end_19f} :catchall_1a0

    throw v0

    :catchall_1a0
    move-exception v0

    goto :goto_19e

    :cond_1a2
    move/from16 v18, v5

    move/from16 v17, v8

    :goto_1a6
    const/4 v0, 0x1

    invoke-direct {v1, v6, v4, v0}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    :goto_1aa
    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    move/from16 v5, v18

    iput v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    move/from16 v8, v17

    iput v8, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public update()V
    .registers 5

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    goto :goto_2b

    :cond_18
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Magnifier;->show(FFFF)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method updateSourceFactors(IF)V
    .registers 5

    iput p2, p0, Landroid/widget/Magnifier;->mZoom:F

    iput p1, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v1, :cond_10

    invoke-static {v1, v0, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$mupdateContentFactors(Landroid/widget/Magnifier$InternalPopupWindow;IF)V

    :cond_10
    return-void
.end method
