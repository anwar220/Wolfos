# classes2.dex

.class public Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
    }
.end annotation


# static fields
.field public static final CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"

.field private static final VERBOSE:Z


# instance fields
.field private mAccessibilityFocus:J

.field private mAccessibilityFocusedWindow:I

.field private final mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private mEnabled:Z

.field private mInputFocus:J

.field private mInputFocusWindow:I

.field private mIsAllWindowsCached:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mValidWindowCacheTimeStamp:J

.field private final mWindowCacheByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "AccessibilityCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    sput-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    sput-boolean v2, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    return-void
.end method

.method private addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 6

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_15

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v2, p2}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .registers 4

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearNodesForWindowLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_2d

    return-void

    :cond_2d
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private clearSubTreeLocked(IJ)V
    .registers 6

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "AccessibilityCache"

    const-string v1, "Clearing cached subtree."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_18

    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    :cond_18
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)Z"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    return v1

    :cond_d
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_25

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    move-result v6

    if-eqz v6, :cond_22

    return v1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method private clearWindowCacheLocked()V
    .registers 6

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "AccessibilityCache"

    const-string v1, "clearWindowCacheLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_32

    add-int/lit8 v1, v0, -0x1

    :goto_15
    if-ltz v1, :cond_32

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    :cond_2a
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_32
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    return-void
.end method

.method private isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)Z"
        }
    .end annotation

    cmp-long v0, p3, p1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {p5, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    move-object v2, p0

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result v1

    return v1
.end method

.method private removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 7

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "AccessibilityCache"

    const-string v1, "Removing cached node."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return-object v1

    :cond_17
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_20

    return-object v1

    :cond_20
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    return-object v2
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 14

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    monitor-exit v0

    return-void

    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_36

    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    if-nez v2, :cond_4f

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_92

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_64
    if-ge v8, v7, :cond_83

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v9

    if-eqz v6, :cond_72

    invoke-virtual {v6, v9, v10}, Landroid/util/LongArray;->indexOf(J)I

    move-result v11

    if-gez v11, :cond_75

    :cond_72
    invoke-direct {p0, v1, v9, v10}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    :cond_75
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_80

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    monitor-exit v0

    return-void

    :cond_80
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    :cond_83
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_92

    invoke-direct {p0, v1, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    :cond_92
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v7

    const-wide/32 v8, 0x7fffffff

    if-eqz v7, :cond_b5

    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_b0

    cmp-long v7, v10, v3

    if-eqz v7, :cond_b0

    invoke-direct {p0, v1, v10, v11}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_b0
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto :goto_c0

    :cond_b5
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v10, v3

    if-nez v7, :cond_c0

    iput-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    const/4 v7, -0x1

    iput v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    :cond_c0
    :goto_c0
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_ca

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    :cond_ca
    monitor-exit v0

    return-void

    :catchall_cc
    move-exception v1

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_3 .. :try_end_ce} :catchall_cc

    throw v1
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 6

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    monitor-exit v0

    return-void

    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_48

    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at display Id [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    monitor-exit v0

    return-void

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public checkIntegrity()V
    .registers 23

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_17

    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_17

    monitor-exit v2

    return-void

    :cond_17
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_84

    iget-object v6, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_2d

    goto :goto_81

    :cond_2d
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_32
    if-ge v8, v7, :cond_81

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v10

    if-eqz v10, :cond_5c

    if-eqz v3, :cond_5b

    const-string v10, "AccessibilityCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate active window:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :cond_5b
    move-object v3, v9

    :cond_5c
    :goto_5c
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_7e

    if-eqz v0, :cond_7d

    const-string v10, "AccessibilityCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate focused window:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :cond_7d
    move-object v0, v9

    :cond_7e
    :goto_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_81
    :goto_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_84
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_8d
    if-ge v8, v7, :cond_22d

    iget-object v9, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-gtz v10, :cond_a5

    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    goto/16 :goto_221

    :cond_a5
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    iget-object v11, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_b5
    if-ge v13, v12, :cond_21b

    invoke-virtual {v9, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ed

    const-string v15, "AccessibilityCache"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v3

    move/from16 v17, v4

    goto/16 :goto_20f

    :cond_ed
    move-object/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_11b

    if-eqz v5, :cond_11a

    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate accessibility focus:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " in window:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    :cond_11a
    move-object v5, v14

    :cond_11b
    :goto_11b
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_147

    if-eqz v6, :cond_146

    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate input focus: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " in window:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    :cond_146
    move-object v6, v14

    :cond_147
    :goto_147
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1aa

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v15

    const/16 v17, 0x0

    move/from16 v18, v1

    move/from16 v1, v17

    :goto_15e
    if-ge v1, v15, :cond_17a

    move-object/from16 v19, v3

    move/from16 v17, v4

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-ne v3, v14, :cond_173

    const/4 v4, 0x1

    move v1, v4

    goto :goto_180

    :cond_173
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto :goto_15e

    :cond_17a
    move-object/from16 v19, v3

    move/from16 v17, v4

    move/from16 v1, v18

    :goto_180
    if-nez v1, :cond_1a7

    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    const-string v1, "Invalid parent-child relation between parent: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and child: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ae

    :cond_1a7
    move/from16 v18, v1

    goto :goto_1ae

    :cond_1aa
    move-object/from16 v19, v3

    move/from16 v17, v4

    :goto_1ae
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1b3
    if-ge v3, v1, :cond_20a

    move-object v15, v5

    invoke-virtual {v14, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_1fc

    move-object/from16 v18, v6

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v5, v14, :cond_1f7

    const-string v6, "AccessibilityCache"

    move/from16 v20, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "Invalid child-parent relation between child: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and parent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_202

    :cond_1f7
    move/from16 v20, v1

    move-object/from16 v21, v4

    goto :goto_202

    :cond_1fc
    move/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v18, v6

    :goto_202
    add-int/lit8 v3, v3, 0x1

    move-object v5, v15

    move-object/from16 v6, v18

    move/from16 v1, v20

    goto :goto_1b3

    :cond_20a
    move/from16 v20, v1

    move-object v15, v5

    move-object/from16 v18, v6

    :goto_20f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto/16 :goto_b5

    :cond_21b
    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    :goto_221
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto/16 :goto_8d

    :cond_22d
    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    monitor-exit v2

    return-void

    :catchall_235
    move-exception v0

    monitor-exit v2
    :try_end_237
    .catchall {:try_start_5 .. :try_end_237} :catchall_235

    throw v0
.end method

.method public clear()V
    .registers 5

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "AccessibilityCache"

    const-string v2, "clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_19
    if-ltz v2, :cond_27

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_27
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public clearSubTree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_18

    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_16

    const-string v2, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    monitor-exit v1

    return v0

    :cond_18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public getFocus(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 22

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p4

    iget-object v10, v7, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_9
    iget-boolean v0, v7, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v11, 0x0

    if-nez v0, :cond_1b

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_19

    const-string v0, "AccessibilityCache"

    const-string v1, "Cache is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    monitor-exit v10

    return-object v11

    :cond_1b
    const/4 v0, 0x2

    if-ne v8, v0, :cond_25

    iget v1, v7, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v2, v7, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    move v12, v1

    move-wide v13, v2

    goto :goto_2b

    :cond_25
    iget v1, v7, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    iget-wide v2, v7, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    move v12, v1

    move-wide v13, v2

    :goto_2b
    const/4 v1, -0x1

    if-ne v12, v1, :cond_30

    monitor-exit v10

    return-object v11

    :cond_30
    const/4 v1, -0x2

    if-eq v9, v1, :cond_37

    if-eq v9, v12, :cond_37

    monitor-exit v10

    return-object v11

    :cond_37
    iget-object v1, v7, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    move-object v15, v1

    if-nez v15, :cond_44

    monitor-exit v10

    return-object v11

    :cond_44
    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v6, v1

    if-nez v6, :cond_4f

    monitor-exit v10

    return-object v11

    :cond_4f
    cmp-long v1, p2, v13

    if-eqz v1, :cond_8a

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v2

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result v1

    if-eqz v1, :cond_65

    goto :goto_8c

    :cond_65
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_88

    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocus is null with type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v8, v0, :cond_7b

    const-string v0, "FOCUS_ACCESSIBILITY"

    goto :goto_7d

    :cond_7b
    const-string v0, "FOCUS_INPUT"

    :goto_7d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    monitor-exit v10

    return-object v11

    :cond_8a
    move-object/from16 v16, v6

    :goto_8c
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_ca

    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocus(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v8, v0, :cond_bc

    const-string v0, "FOCUS_ACCESSIBILITY"

    goto :goto_be

    :cond_bc
    const-string v0, "FOCUS_INPUT"

    :goto_be
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    :cond_ca
    move-object/from16 v3, v16

    :goto_cc
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-exit v10

    return-object v0

    :catchall_d3
    move-exception v0

    monitor-exit v10
    :try_end_d5
    .catchall {:try_start_9 .. :try_end_d5} :catchall_d3

    throw v0
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    monitor-exit v0

    return-object v2

    :cond_15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_21

    monitor-exit v0

    return-object v2

    :cond_21
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_2f

    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v3

    :cond_2f
    sget-boolean v3, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v3, :cond_59

    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    monitor-exit v0

    return-object v2

    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 8

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    monitor-exit v0

    return-object v2

    :cond_15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_3b

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-nez v4, :cond_29

    goto :goto_38

    :cond_29
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v5, :cond_38

    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v2, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    monitor-exit v0

    return-object v2

    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_3b
    monitor-exit v0

    return-object v2

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    monitor-exit v0

    return-object v2

    :cond_15
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    if-nez v1, :cond_1b

    monitor-exit v0

    return-object v2

    :cond_1b
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_83

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v3, :cond_81

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_3c

    goto :goto_7e

    :cond_3c
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_7e

    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    const/4 v8, 0x0

    :goto_48
    if-ge v8, v6, :cond_5a

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v10

    invoke-virtual {v7, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_5a
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v10, v8, -0x1

    :goto_65
    if-ltz v10, :cond_7b

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityWindowInfo;

    new-instance v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v12, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_65

    :cond_7b
    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_81
    monitor-exit v0

    return-object v1

    :cond_83
    monitor-exit v0

    return-object v2

    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_85

    throw v1
.end method

.method public isEnabled()Z
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_f
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v5, :cond_20

    sget-boolean v5, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v5, :cond_1e

    const-string v5, "AccessibilityCache"

    const-string v6, "Cache is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    monitor-exit v4

    return v0

    :cond_20
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    if-nez v5, :cond_2c

    monitor-exit v4

    return v0

    :cond_2c
    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_33

    const/4 v0, 0x1

    :cond_33
    monitor-exit v4

    return v0

    :catchall_35
    move-exception v0

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_35

    throw v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 13

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_15

    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_13

    const-string v2, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    monitor-exit v1

    return-void

    :cond_15
    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_37

    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAccessibilityEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    const-wide/32 v5, 0x7fffffff

    sparse-switch v3, :sswitch_data_126

    goto/16 :goto_104

    :sswitch_44
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_c5

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    goto/16 :goto_104

    :sswitch_57
    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_104

    iget v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v8

    if-ne v7, v8, :cond_104

    iget v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v7, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    move-object v0, v7

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    const/4 v5, -0x1

    iput v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto/16 :goto_104

    :sswitch_79
    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_84

    iget v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    invoke-direct {p0, v5, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_84
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_104

    :sswitch_99
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_104

    :sswitch_a5
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a8
    .catchall {:try_start_4 .. :try_end_a8} :catchall_123

    :try_start_a8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v9

    and-int/2addr v9, v4

    if-eqz v9, :cond_bb

    invoke-direct {p0, v6, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_c0

    :cond_bb
    invoke-direct {p0, v6, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    move-object v0, v9

    :goto_c0
    monitor-exit v5

    goto :goto_104

    :catchall_c2
    move-exception v2

    monitor-exit v5
    :try_end_c4
    .catchall {:try_start_a8 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v2

    :cond_c5
    :sswitch_c5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    goto :goto_104

    :sswitch_cf
    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_de

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_de
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v0, v5

    goto :goto_104

    :sswitch_f6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v0, v5

    nop

    :cond_104
    :goto_104
    monitor-exit v1
    :try_end_105
    .catchall {:try_start_c4 .. :try_end_105} :catchall_123

    if-eqz v0, :cond_11b

    if-eqz v2, :cond_110

    const-string v1, "AccessibilityCache"

    const-string v2, "Refreshing and re-adding cached node."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-virtual {v1, v0, v4}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_11b

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_11b
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v1, :cond_122

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    :cond_122
    return-void

    :catchall_123
    move-exception v2

    :try_start_124
    monitor-exit v1
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v2

    :sswitch_data_126
    .sparse-switch
        0x1 -> :sswitch_f6
        0x4 -> :sswitch_f6
        0x8 -> :sswitch_cf
        0x10 -> :sswitch_f6
        0x20 -> :sswitch_c5
        0x800 -> :sswitch_a5
        0x1000 -> :sswitch_99
        0x2000 -> :sswitch_f6
        0x8000 -> :sswitch_79
        0x10000 -> :sswitch_57
        0x400000 -> :sswitch_44
    .end sparse-switch
.end method

.method public setEnabled(Z)V
    .registers 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setWindowsOnAllDisplays(Landroid/util/SparseArray;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;J)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    monitor-exit v0

    return-void

    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "AccessibilityCache"

    const-string v2, "Set windows"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_27

    monitor-exit v0

    return-void

    :cond_27
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    if-nez p1, :cond_2e

    monitor-exit v0

    return-void

    :cond_2e
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_59

    nop

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_3f

    goto :goto_56

    :cond_3f
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_48
    if-ge v6, v5, :cond_56

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {p0, v4, v7}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_59
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    monitor-exit v0

    return-void

    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method
