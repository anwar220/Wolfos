# classes4.dex

.class public final Landroid/window/SplashScreenView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SplashScreenView$SplashScreenViewParcelable;,
        Landroid/window/SplashScreenView$IconAnimateListener;,
        Landroid/window/SplashScreenView$Builder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrandingImageView:Landroid/view/View;

.field private mClientCallback:Landroid/os/RemoteCallback;

.field private mHasRemoved:Z

.field private mIconAnimationDuration:Ljava/time/Duration;

.field private mIconAnimationStart:Ljava/time/Instant;

.field private mIconView:Landroid/view/View;

.field private mInitBackgroundColor:I

.field private mIsCopied:Z

.field private mNotCopyable:Z

.field private mParceledBrandingBitmap:Landroid/graphics/Bitmap;

.field private mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mParceledIconBitmap:Landroid/graphics/Bitmap;

.field private mSurfaceHost:Landroid/view/SurfaceControlViewHost;

.field private mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private final mTmpPos:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public static synthetic $r8$lambda$D0RL7Bo_UxH9XARimkg9Y6WDPms(Landroid/window/SplashScreenView;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/SplashScreenView;->animationStartCallback(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconView(Landroid/window/SplashScreenView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfacePackageCopy(Landroid/window/SplashScreenView;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView;->mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBrandingImageView(Landroid/window/SplashScreenView;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientCallback(Landroid/window/SplashScreenView;Landroid/os/RemoteCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mClientCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIconAnimationDuration(Landroid/window/SplashScreenView;Ljava/time/Duration;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIconAnimationStart(Landroid/window/SplashScreenView;Ljava/time/Instant;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInitBackgroundColor(Landroid/window/SplashScreenView;I)V
    .registers 2

    iput p1, p0, Landroid/window/SplashScreenView;->mInitBackgroundColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmParceledBrandingBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmParceledIconBackgroundBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmParceledIconBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceHost(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfacePackageCopy(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceView(Landroid/window/SplashScreenView;Landroid/view/SurfaceView;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpPos:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpPos:[I

    return-void
.end method

.method private animationStartCallback(J)V
    .registers 5

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    :cond_12
    return-void
.end method

.method static synthetic lambda$syncTransferSurfaceOnDraw$0(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5

    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "SurfacePackage\'surface reparented to %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseAnimationSurfaceHost()V
    .registers 6

    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-boolean v2, p0, Landroid/window/SplashScreenView;->mIsCopied:Z

    if-nez v2, :cond_35

    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v0, :cond_2d

    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shell removed splash screen. Releasing SurfaceControlViewHost on thread #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V

    iput-object v1, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    goto :goto_42

    :cond_35
    iget-object v2, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v2, :cond_42

    if-nez v0, :cond_42

    iput-object v1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iget-object v0, p0, Landroid/window/SplashScreenView;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public static releaseIconHost(Landroid/view/SurfaceControlViewHost;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/window/SplashScreenView$IconAnimateListener;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Landroid/window/SplashScreenView$IconAnimateListener;

    invoke-interface {v1}, Landroid/window/SplashScreenView$IconAnimateListener;->stopAnimation()V

    :cond_12
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->release()V

    return-void
.end method


# virtual methods
.method public attachHostWindow(Landroid/view/Window;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    return-void
.end method

.method public getBrandingView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-object v0
.end method

.method public getIconAnimationDuration()Ljava/time/Duration;
    .registers 2

    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public getIconAnimationStart()Ljava/time/Instant;
    .registers 2

    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method public getInitBackgroundColor()I
    .registers 2

    iget v0, p0, Landroid/window/SplashScreenView;->mInitBackgroundColor:I

    return v0
.end method

.method public getSurfaceHost()Landroid/view/SurfaceControlViewHost;
    .registers 2

    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    return-object v0
.end method

.method initIconAnimation(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    instance-of v0, p1, Landroid/window/SplashScreenView$IconAnimateListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/window/SplashScreenView$IconAnimateListener;

    new-instance v1, Landroid/window/SplashScreenView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/window/SplashScreenView$$ExternalSyntheticLambda0;-><init>(Landroid/window/SplashScreenView;)V

    invoke-interface {v0, v1}, Landroid/window/SplashScreenView$IconAnimateListener;->prepareAnimate(Ljava/util/function/LongConsumer;)V

    new-instance v1, Landroid/window/SplashScreenView$1;

    invoke-direct {v1, p0}, Landroid/window/SplashScreenView$1;-><init>(Landroid/window/SplashScreenView;)V

    invoke-interface {v0, v1}, Landroid/window/SplashScreenView$IconAnimateListener;->setAnimationJankMonitoring(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public isCopyable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/SplashScreenView;->mNotCopyable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCopied()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mIsCopied:Z

    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_8

    return-void

    :cond_8
    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v0, :cond_13

    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string v1, "Setting SurfaceView\'s SurfacePackage to null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/window/SplashScreenView;->releaseAnimationSurfaceHost()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 19

    move-object v0, p0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v1, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    iget-object v2, v0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_72

    iget-object v2, v0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    if-nez v2, :cond_18

    goto :goto_72

    :cond_18
    iget-object v2, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_21

    return-void

    :cond_21
    sub-int v3, p5, p3

    iget-object v4, v0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    iget-object v5, v0, Landroid/window/SplashScreenView;->mTmpPos:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, v0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    iget-object v5, v0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v4, v0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v5, :cond_49

    sget-object v6, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string v7, "Unable to adjust branding image layout, layout changed?"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_49
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v7, v0, Landroid/window/SplashScreenView;->mTmpPos:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int v7, v3, v7

    sub-int/2addr v7, v4

    sub-int v8, v7, v1

    if-ge v7, v1, :cond_5f

    iget-object v9, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_71

    :cond_5f
    if-ge v8, v6, :cond_71

    int-to-double v9, v8

    const-wide/high16 v11, 0x4000000000000000L  # 2.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v9, v0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_71
    :goto_71
    return-void

    :cond_72
    :goto_72
    return-void
.end method

.method public remove()V
    .registers 5

    iget-boolean v0, p0, Landroid/window/SplashScreenView;->mHasRemoved:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/window/SplashScreenView;->setVisibility(I)V

    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1b

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_20

    :cond_1b
    if-eqz v0, :cond_20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    :cond_27
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    :cond_37
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_42

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_42
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_49
    iget-object v0, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    sget-boolean v2, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v2, :cond_5f

    sget-object v2, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "remove starting view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    if-eqz v0, :cond_64

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    :cond_64
    iput-object v1, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    :cond_66
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mHasRemoved:Z

    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_f
    return-void
.end method

.method public setNotCopyable()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mNotCopyable:Z

    return-void
.end method

.method public syncTransferSurfaceOnDraw()V
    .registers 4

    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v1, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/window/SplashScreenView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/window/SplashScreenView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method
