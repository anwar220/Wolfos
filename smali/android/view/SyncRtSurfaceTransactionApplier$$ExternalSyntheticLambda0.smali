# classes3.dex

.class public final synthetic Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SyncRtSurfaceTransactionApplier;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$0:Landroid/view/SyncRtSurfaceTransactionApplier;

    iput-object p2, p0, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 5

    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$0:Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->lambda$scheduleApply$0$android-view-SyncRtSurfaceTransactionApplier(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method
