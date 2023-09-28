# classes4.dex

.class public Landroid/window/SplashScreenView$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAllowHandleSolidColor:Z

.field private mBackgroundColor:I

.field private mBrandingDrawable:Landroid/graphics/drawable/Drawable;

.field private mBrandingImageHeight:I

.field private mBrandingImageWidth:I

.field private mClientCallback:Landroid/os/RemoteCallback;

.field private final mContext:Landroid/content/Context;

.field private mIconAnimationDuration:Ljava/time/Duration;

.field private mIconAnimationStart:Ljava/time/Instant;

.field private mIconBackground:Landroid/graphics/drawable/Drawable;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mParceledBrandingBitmap:Landroid/graphics/Bitmap;

.field private mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mParceledIconBitmap:Landroid/graphics/Bitmap;

.field private mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private mUiThreadInitTask:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/window/SplashScreenView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;
    .registers 10

    const-wide/16 v0, 0x20

    const-string v2, "SplashScreenView#createSurfaceView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/SurfaceView;

    invoke-direct {v3, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/SurfaceView;->setPadding(IIII)V

    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v4, :cond_77

    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SurfaceControlViewHost created on thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    new-instance v4, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHostToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-virtual {v4, v5, v6, v6}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-static {p1, v6}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-static {p1, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfaceHost(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost;)V

    new-instance v7, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {v7, v6}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-static {p1, v7}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackageCopy(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    goto :goto_8b

    :cond_77
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Using copy of SurfacePackage in the client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-static {p1, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    :goto_8b
    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    if-eqz v4, :cond_be

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v4, v5

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    invoke-virtual {v3}, Landroid/view/SurfaceView;->setUseAlpha()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/4 v5, -0x3

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p1, v3}, Landroid/window/SplashScreenView;->addView(Landroid/view/View;)V

    invoke-static {p1, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfaceView(Landroid/window/SplashScreenView;Landroid/view/SurfaceView;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3
.end method


# virtual methods
.method public build()Landroid/window/SplashScreenView;
    .registers 10

    const-wide/16 v0, 0x20

    const-string v2, "SplashScreenView#build"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    nop

    const v3, 0x1090128

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/window/SplashScreenView;

    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    invoke-static {v3, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmInitBackgroundColor(Landroid/window/SplashScreenView;I)V

    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_26

    invoke-virtual {v3, v4}, Landroid/window/SplashScreenView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_26
    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/window/SplashScreenView;->setBackgroundColor(I)V

    :goto_2b
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v4

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v5, v6, v7}, Landroid/view/ForceDarkHelperStub;->updateForceDarkSplashScreen(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Z

    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-static {v3, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmClientCallback(Landroid/window/SplashScreenView;Landroid/os/RemoteCallback;)V

    const v4, 0x10204e9

    invoke-virtual {v3, v4}, Landroid/window/SplashScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmBrandingImageView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/window/SplashScreenView$IconAnimateListener;

    if-nez v5, :cond_87

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v5, :cond_57

    goto :goto_87

    :cond_57
    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    if-eqz v5, :cond_ab

    const v5, 0x10204ea

    invoke-virtual {v3, v5}, Landroid/window/SplashScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    nop

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7b

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7b
    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_82

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_82
    const/4 v4, 0x1

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    goto :goto_ab

    :cond_87
    :goto_87
    const/4 v4, 0x1

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    if-eqz v5, :cond_95

    new-instance v6, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3}, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/window/SplashScreenView$Builder;Landroid/window/SplashScreenView;)V

    invoke-interface {v5, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_9c

    :cond_95
    invoke-direct {p0, v3}, Landroid/window/SplashScreenView$Builder;->createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    :goto_9c
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/window/SplashScreenView;->initIconAnimation(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationStart:Ljava/time/Instant;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconAnimationStart(Landroid/window/SplashScreenView;Ljava/time/Instant;)V

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationDuration:Ljava/time/Duration;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconAnimationDuration(Landroid/window/SplashScreenView;Ljava/time/Duration;)V

    :cond_ab
    :goto_ab
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_b5

    if-nez v4, :cond_b8

    iget-boolean v5, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    if-nez v5, :cond_b8

    :cond_b5
    invoke-virtual {v3}, Landroid/window/SplashScreenView;->setNotCopyable()V

    :cond_b8
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledIconBackgroundBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledIconBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    if-lez v5, :cond_ef

    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    if-lez v5, :cond_ef

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_ef

    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f8

    :cond_ef
    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_f8
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_ff

    invoke-static {v3, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledBrandingBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    :cond_ff
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_175

    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nIcon: view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmIconView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " drawable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\nBranding: view: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_175
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3
.end method

.method public createFromParcel(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/window/SplashScreenView$Builder;
    .registers 6

    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->getIconSize()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmSurfacePackage(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_31

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_31

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    :cond_31
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4e

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_4e
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_74

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingWidth(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I

    move-result v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingHeight(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    :cond_74
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconAnimationStartMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationStart:Ljava/time/Instant;

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconAnimationDurationMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationDuration:Ljava/time/Duration;

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmClientCallback(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/os/RemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const-string v2, "Building from parcel drawable: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return-object p0
.end method

.method synthetic lambda$build$0$android-window-SplashScreenView$Builder(Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$Builder;->createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    return-void
.end method

.method public setAllowHandleSolidColor(Z)Landroid/window/SplashScreenView$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    return-object p0
.end method

.method public setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;
    .registers 2

    iput p1, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    return-object p0
.end method

.method public setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;
    .registers 4

    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    iput p3, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    return-object p0
.end method

.method public setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconBackground(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconSize(I)Landroid/window/SplashScreenView$Builder;
    .registers 2

    iput p1, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    return-object p0
.end method

.method public setOverlayDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUiThreadInitConsumer(Ljava/util/function/Consumer;)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Landroid/window/SplashScreenView$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    return-object p0
.end method
