# classes4.dex

.class public Lcom/android/net/module/util/PerUidCounter;
.super Ljava/lang/Object;


# instance fields
.field private final mMaxCountPerUid:I

.field final mUidToCount:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    if-lez p1, :cond_f

    iput p1, p0, Lcom/android/net/module/util/PerUidCounter;->mMaxCountPerUid:I

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum counter value must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decrementCountOrThrow(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/net/module/util/PerUidCounter;->decrementCountOrThrow(II)V

    return-void
.end method

.method public declared-synchronized decrementCountOrThrow(II)V
    .registers 7

    monitor-enter p0

    if-lez p2, :cond_41

    :try_start_3
    iget-object v0, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    sub-int/2addr v0, p2

    if-ltz v0, :cond_1c

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1a

    :cond_15
    iget-object v1, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3f

    :goto_1a
    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: too small count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3f
    move-exception p1

    goto :goto_49

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decrement count must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_3f

    :goto_49
    monitor-exit p0

    throw p1
.end method

.method public incrementCountOrThrow(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/net/module/util/PerUidCounter;->incrementCountOrThrow(II)V

    return-void
.end method

.method public declared-synchronized incrementCountOrThrow(II)V
    .registers 8

    monitor-enter p0

    if-lez p2, :cond_3d

    :try_start_3
    iget-object v0, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/net/module/util/PerUidCounter;->mMaxCountPerUid:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1c

    iget-object v2, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    long-to-int v3, v0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3b

    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeded its allowed limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_3b
    move-exception p1

    goto :goto_45

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Increment count must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_3b

    :goto_45
    monitor-exit p0

    throw p1
.end method
