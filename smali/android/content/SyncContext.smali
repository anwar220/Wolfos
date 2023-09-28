# classes.dex

.class public Landroid/content/SyncContext;
.super Ljava/lang/Object;


# static fields
.field private static final HEARTBEAT_SEND_INTERVAL_IN_MS:J = 0x3e8L


# instance fields
.field private mLastHeartbeatSendTime:J

.field private mSyncContext:Landroid/content/ISyncContext;


# direct methods
.method public constructor <init>(Landroid/content/ISyncContext;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    return-void
.end method

.method private updateHeartbeat()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    return-void

    :cond_e
    :try_start_e
    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    iget-object v2, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-eqz v2, :cond_17

    invoke-interface {v2}, Landroid/content/ISyncContext;->sendHeartbeat()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    :cond_17
    goto :goto_19

    :catch_18
    move-exception v2

    :goto_19
    return-void
.end method


# virtual methods
.method public getSyncContextBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/content/ISyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/SyncContext;->updateHeartbeat()V

    return-void
.end method
