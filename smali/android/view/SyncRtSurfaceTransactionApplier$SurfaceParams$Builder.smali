# classes3.dex

.class public Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field alpha:F

.field backgroundBlurRadius:I

.field cornerRadius:F

.field flags:I

.field layer:I

.field matrix:Landroid/graphics/Matrix;

.field mergeTransaction:Landroid/view/SurfaceControl$Transaction;

.field final surface:Landroid/view/SurfaceControl;

.field visible:Z

.field windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .registers 14

    new-instance v12, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    iget v3, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    iget-object v4, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget v6, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    iget v7, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    iget v8, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget-boolean v9, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    iget-object v10, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;IFIZLandroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams-IA;)V

    return-object v12
.end method

.method public withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withBackgroundBlur(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withLayer(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    iput-boolean p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method
