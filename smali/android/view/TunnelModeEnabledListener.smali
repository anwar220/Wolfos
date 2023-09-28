# classes3.dex

.class public abstract Landroid/view/TunnelModeEnabledListener;
.super Ljava/lang/Object;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mNativeListener:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TunnelModeEnabledListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Landroid/view/TunnelModeEnabledListener;->nativeCreate(Landroid/view/TunnelModeEnabledListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    return-void
.end method

.method public static dispatchOnTunnelModeEnabledChanged(Landroid/view/TunnelModeEnabledListener;Z)V
    .registers 4

    iget-object v0, p0, Landroid/view/TunnelModeEnabledListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/TunnelModeEnabledListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$dispatchOnTunnelModeEnabledChanged$0(Landroid/view/TunnelModeEnabledListener;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/TunnelModeEnabledListener;->onTunnelModeEnabledChanged(Z)V

    return-void
.end method

.method private static native nativeCreate(Landroid/view/TunnelModeEnabledListener;)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeRegister(J)V
.end method

.method private static native nativeUnregister(J)V
.end method

.method public static register(Landroid/view/TunnelModeEnabledListener;)V
    .registers 5

    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeRegister(J)V

    return-void
.end method

.method public static unregister(Landroid/view/TunnelModeEnabledListener;)V
    .registers 5

    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeUnregister(J)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 5

    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {p0}, Landroid/view/TunnelModeEnabledListener;->unregister(Landroid/view/TunnelModeEnabledListener;)V

    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/view/TunnelModeEnabledListener;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract onTunnelModeEnabledChanged(Z)V
.end method
