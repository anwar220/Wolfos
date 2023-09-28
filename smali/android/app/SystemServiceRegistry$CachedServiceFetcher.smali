# classes.dex

.class abstract Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CachedServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCacheIndex:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfgetsServiceCacheSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfputsServiceCacheSize(I)V

    iput v0, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    iget-object v1, p1, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    monitor-enter v0

    :try_start_8
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget-object v6, v0, v5

    if-eqz v6, :cond_11

    move-object v3, v6

    monitor-exit v0

    goto :goto_57

    :cond_11
    aget v7, v1, v5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1b

    aget v7, v1, v5

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1e

    :cond_1b
    const/4 v7, 0x0

    aput v7, v1, v5

    :cond_1e
    aget v7, v1, v5

    if-nez v7, :cond_26

    const/4 v4, 0x1

    const/4 v7, 0x1

    aput v7, v1, v5

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_93

    if-eqz v4, :cond_73

    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_2b
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2f
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_2b .. :try_end_2f} :catch_43
    .catchall {:try_start_2b .. :try_end_2f} :catchall_41

    const/4 v8, 0x2

    monitor-enter v0

    :try_start_31
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v7, v0, v5

    aput v8, v1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move-object v5, v7

    move v6, v8

    goto :goto_55

    :catchall_3e
    move-exception v5

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_3e

    throw v5

    :catchall_41
    move-exception v7

    goto :goto_64

    :catch_43
    move-exception v7

    :try_start_44
    invoke-static {v7}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_41

    monitor-enter v0

    :try_start_48
    iget v7, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v7

    iget v7, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v6, v1, v7

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_61

    nop

    :goto_55
    move-object v3, v5

    nop

    :goto_57
    if-eqz v2, :cond_60

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_60
    return-object v3

    :catchall_61
    move-exception v7

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v7

    :goto_64
    monitor-enter v0

    :try_start_65
    iget v8, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v8

    aput v6, v1, v8

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_70

    throw v7

    :catchall_70
    move-exception v7

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v7

    :cond_73
    monitor-enter v0

    :goto_74
    :try_start_74
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v5, v1, v5
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_90

    if-ge v5, v8, :cond_8d

    :try_start_7a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_82} :catch_83
    .catchall {:try_start_7a .. :try_end_82} :catchall_90

    :goto_82
    goto :goto_74

    :catch_83
    move-exception v5

    :try_start_84
    const-string v6, "SystemServiceRegistry"

    const-string v7, "getService() interrupted"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_82

    :cond_8d
    monitor-exit v0

    goto/16 :goto_6

    :catchall_90
    move-exception v5

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_90

    throw v5

    :catchall_93
    move-exception v5

    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v5
.end method
