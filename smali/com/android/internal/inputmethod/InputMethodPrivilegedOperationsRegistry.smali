# classes4.dex

.class public final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;
.super Ljava/lang/Object;


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

.field private static sRegistry:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .registers 5

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_d
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1b

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-nez v2, :cond_29

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_29
    monitor-exit v0

    return-object v2

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private static getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .registers 1

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    :cond_b
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    return-object v0
.end method

.method public static put(Landroid/os/IBinder;Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;)V
    .registers 5

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    :cond_e
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static remove(Landroid/os/IBinder;)V
    .registers 3

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
