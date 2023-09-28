# classes.dex

.class public final Landroid/graphics/BLASTBufferQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;
    }
.end annotation


# instance fields
.field public mNativeObject:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeCreate(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    return-void
.end method

.method private static native nativeAdjustMaxDequeuedBufferCount(JI)Z
.end method

.method private static native nativeApplyPendingTransactions(JJ)V
.end method

.method private static native nativeCreate(Ljava/lang/String;Z)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;
.end method

.method private static native nativeGetLastAcquiredFrameNum(J)J
.end method

.method private static native nativeGetSurface(JZ)Landroid/view/Surface;
.end method

.method private static native nativeGetUndequeuedBufferCount(J)I
.end method

.method private static native nativeIsSameSurfaceControl(JJ)Z
.end method

.method private static native nativeMergeWithNextTransaction(JJJ)V
.end method

.method private static native nativeSetDynamicLog(JI)Z
.end method

.method private static native nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
.end method

.method private static native nativeSetUndequeuedBufferCount(JI)V
.end method

.method private static native nativeStopContinuousSyncTransaction(J)V
.end method

.method private static native nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;Z)V"
        }
    .end annotation
.end method

.method private static native nativeUpdate(JJJJI)V
.end method


# virtual methods
.method public adjustMaxDequeuedBufferCount(I)Z
    .registers 4

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeAdjustMaxDequeuedBufferCount(JI)Z

    move-result v0

    return v0
.end method

.method public applyPendingTransactions(J)V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeApplyPendingTransactions(JJ)V

    return-void
.end method

.method public createSurface()Landroid/view/Surface;
    .registers 4

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public createSurfaceWithHandle()Landroid/view/Surface;
    .registers 4

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 3

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_10

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getLastAcquiredFrameNum()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeGetLastAcquiredFrameNum(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUndequeuedBufferCount()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeGetUndequeuedBufferCount(J)I

    move-result v0

    return v0
.end method

.method public isSameSurfaceControl(Landroid/view/SurfaceControl;)Z
    .registers 6

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->nativeIsSameSurfaceControl(JJ)Z

    move-result v0

    return v0
.end method

.method public mergeWithNextTransaction(JJ)V
    .registers 11

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    return-void
.end method

.method public mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 10

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    return-void
.end method

.method public setDynamicLog(I)Z
    .registers 4

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetDynamicLog(JI)Z

    move-result v0

    return v0
.end method

.method public setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    return-void
.end method

.method public setUndequeuedBufferCount(I)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetUndequeuedBufferCount(JI)V

    return-void
.end method

.method public stopContinuousSyncTransaction()V
    .registers 3

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeStopContinuousSyncTransaction(J)V

    return-void
.end method

.method public syncNextTransaction(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public syncNextTransaction(ZLjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p2, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)V

    return-void
.end method

.method public update(Landroid/view/SurfaceControl;III)V
    .registers 14

    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v4, p2

    int-to-long v6, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/BLASTBufferQueue;->nativeUpdate(JJJJI)V

    return-void
.end method
