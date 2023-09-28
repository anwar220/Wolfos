# classes3.dex

.class abstract Landroid/view/SurfaceControl$CaptureArgs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$CaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final mAllowProtected:Z

.field private final mCaptureSecureLayers:Z

.field private final mFrameScaleX:F

.field private final mFrameScaleY:F

.field private final mGrayscale:Z

.field private final mPixelFormat:I

.field private final mSourceCrop:Landroid/graphics/Rect;

.field private final mUid:J


# direct methods
.method private constructor <init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
            "+",
            "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmPixelFormat(Landroid/view/SurfaceControl$CaptureArgs$Builder;)I

    move-result v1

    iput v1, p0, Landroid/view/SurfaceControl$CaptureArgs;->mPixelFormat:I

    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmSourceCrop(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleX(Landroid/view/SurfaceControl$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mFrameScaleX:F

    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleY(Landroid/view/SurfaceControl$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mFrameScaleY:F

    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmCaptureSecureLayers(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mCaptureSecureLayers:Z

    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmAllowProtected(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mAllowProtected:Z

    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmUid(Landroid/view/SurfaceControl$CaptureArgs$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mUid:J

    invoke-static {p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->-$$Nest$fgetmGrayscale(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$CaptureArgs;->mGrayscale:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;Landroid/view/SurfaceControl$CaptureArgs-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs;-><init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;)V

    return-void
.end method
