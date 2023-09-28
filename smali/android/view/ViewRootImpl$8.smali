# classes3.dex

.class Landroid/view/ViewRootImpl$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbacksForSync(ZLandroid/window/SurfaceSyncer$SyncBufferCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;

.field final synthetic val$syncBuffer:Z

.field final synthetic val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;Z)V
    .registers 4

    iput-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$8;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iput-boolean p3, p0, Landroid/view/ViewRootImpl$8;->val$syncBuffer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFrameDraw$0$android-view-ViewRootImpl$8(JLandroid/window/SurfaceSyncer$SyncBufferCallback;ZZ)V
    .registers 9

    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$misDynamicLog(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received frameCommittedCallback lastAttemptedDrawFrameNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " didProduceBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    if-nez p5, :cond_48

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_48
    if-nez p4, :cond_4d

    invoke-interface {p3, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    :cond_4d
    return-void
.end method

.method public onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 13

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    return-object v0

    :cond_15
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$8;->val$syncBuffer:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;-><init>(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-virtual {v0, v2}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    :cond_2c
    iget-object v7, p0, Landroid/view/ViewRootImpl$8;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget-boolean v8, p0, Landroid/view/ViewRootImpl$8;->val$syncBuffer:Z

    new-instance v0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, p2

    invoke-direct/range {v3 .. v8}, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewRootImpl$8;JLandroid/window/SurfaceSyncer$SyncBufferCallback;Z)V

    return-object v0
.end method

.method public onFrameDraw(J)V
    .registers 3

    return-void
.end method
