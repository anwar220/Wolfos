# classes3.dex

.class public Landroid/view/ScrollCaptureSession;
.super Ljava/lang/Object;


# instance fields
.field private final mPositionInWindow:Landroid/graphics/Point;

.field private final mScrollBounds:Landroid/graphics/Rect;

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureSession;->mScrollBounds:Landroid/graphics/Rect;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/ScrollCaptureSession;->mPositionInWindow:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public getPositionInWindow()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mPositionInWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScrollBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mScrollBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    return-object v0
.end method
