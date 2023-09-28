# classes3.dex

.class public Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
.super Landroid/view/SurfaceControl$CaptureArgs$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$DisplayCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/SurfaceControl$CaptureArgs$Builder<",
        "Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisplayToken:Landroid/os/IBinder;

.field private mHeight:I

.field private mUseIdentityTransform:Z

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayToken(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeight(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseIdentityTransform(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mUseIdentityTransform:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mWidth:I

    return p0
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControl$CaptureArgs$Builder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setDisplayToken(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/SurfaceControl$DisplayCaptureArgs;
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    new-instance v0, Landroid/view/SurfaceControl$DisplayCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs;-><init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;Landroid/view/SurfaceControl$DisplayCaptureArgs-IA;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take screenshot with null display token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic getThis()Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->getThis()Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method getThis()Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
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

.method public setDisplayToken(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

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

.method public bridge synthetic setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl$CaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .registers 3

    iput p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mWidth:I

    iput p2, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mHeight:I

    return-object p0
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

.method public setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->mUseIdentityTransform:Z

    return-object p0
.end method
