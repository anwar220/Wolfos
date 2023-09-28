# classes3.dex

.class abstract Landroid/view/SurfaceControl$CaptureArgs$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$CaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllowProtected:Z

.field private mCaptureSecureLayers:Z

.field private mFrameScaleX:F

.field private mFrameScaleY:F

.field private mGrayscale:Z

.field private mPixelFormat:I

.field private final mSourceCrop:Landroid/graphics/Rect;

.field private mUid:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowProtected(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mAllowProtected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSecureLayers(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mCaptureSecureLayers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameScaleX(Landroid/view/SurfaceControl$CaptureArgs$Builder;)F
    .registers 1

    iget p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameScaleY(Landroid/view/SurfaceControl$CaptureArgs$Builder;)F
    .registers 1

    iget p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGrayscale(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mGrayscale:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPixelFormat(Landroid/view/SurfaceControl$CaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mPixelFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSourceCrop(Landroid/view/SurfaceControl$CaptureArgs$Builder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUid(Landroid/view/SurfaceControl$CaptureArgs$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mUid:J

    return-wide v0
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mPixelFormat:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleX:F

    iput v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleY:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mUid:J

    return-void
.end method


# virtual methods
.method abstract getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mAllowProtected:Z

    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mCaptureSecureLayers:Z

    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleX:F

    iput p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleY:F

    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    iput p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleX:F

    iput p2, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mFrameScaleY:F

    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mGrayscale:Z

    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mPixelFormat:I

    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iput-wide p1, p0, Landroid/view/SurfaceControl$CaptureArgs$Builder;->mUid:J

    invoke-virtual {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method
