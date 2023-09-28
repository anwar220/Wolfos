# classes.dex

.class public final Landroid/app/compat/ChangeIdStateCache;
.super Landroid/app/PropertyInvalidatedCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/app/compat/ChangeIdStateQuery;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_KEY:Ljava/lang/String; = "cache_key.is_compat_change_enabled"

.field private static final MAX_ENTRIES:I = 0x14

.field private static sDisabled:Z


# instance fields
.field private volatile mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x14

    const-string v1, "cache_key.is_compat_change_enabled"

    invoke-direct {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static disable()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    return-void
.end method

.method public static invalidate()V
    .registers 1

    sget-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    if-nez v0, :cond_9

    const-string v0, "cache_key.is_compat_change_enabled"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;
    .registers 4

    iget-object v0, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    if-nez v0, :cond_28

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    move-object v0, v1

    if-nez v0, :cond_23

    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_1b

    iput-object v0, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    goto :goto_23

    :cond_1b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get PlatformCompatService instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    :goto_23
    monitor-exit p0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1

    :cond_28
    :goto_28
    return-object v0
.end method

.method public recompute(Landroid/app/compat/ChangeIdStateQuery;)Ljava/lang/Boolean;
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget v2, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    if-nez v2, :cond_1e

    invoke-virtual {p0}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iget-wide v3, p1, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget-object v5, p1, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    iget v6, p1, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_54
    .catchall {:try_start_4 .. :try_end_1a} :catchall_52

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_1e
    :try_start_1e
    iget v2, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    invoke-virtual {p0}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iget-wide v3, p1, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget v5, p1, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_54
    .catchall {:try_start_1e .. :try_end_33} :catchall_52

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_37
    :try_start_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid query type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_52} :catch_54
    .catchall {:try_start_37 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v2

    goto :goto_65

    :catch_54
    move-exception v2

    :try_start_55
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_52

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not recompute value!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/app/compat/ChangeIdStateQuery;

    invoke-virtual {p0, p1}, Landroid/app/compat/ChangeIdStateCache;->recompute(Landroid/app/compat/ChangeIdStateQuery;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
