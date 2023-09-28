# classes3.dex

.class public Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
.super Landroid/view/SurfaceControl$CaptureArgs$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$LayerCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
        "Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mChildrenOnly:Z

.field private mExcludeLayers:[Landroid/view/SurfaceControl;

.field private mLayer:Landroid/view/SurfaceControl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChildrenOnly(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->mChildrenOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->mExcludeLayers:[Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLayer(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->mLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->mChildrenOnly:Z

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setLayer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/SurfaceControl$LayerCaptureArgs;
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->mLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs;-><init>(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;Landroid/view/SurfaceControl$LayerCaptureArgs-IA;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take screenshot with null layer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method getThis()Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setChildrenOnly(Z)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->mChildrenOnly:Z

    return-object p0
.end method

.method public setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->mExcludeLayers:[Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public bridge synthetic setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setFrameScale(FF)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setGrayscale(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLayer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->mLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public bridge synthetic setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method
