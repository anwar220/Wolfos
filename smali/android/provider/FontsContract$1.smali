# classes3.dex

.class Landroid/provider/FontsContract$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Landroid/provider/FontsContract;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/provider/FontsContract;->-$$Nest$sfgetsThread()Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroid/provider/FontsContract;->-$$Nest$sfgetsThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/provider/FontsContract;->-$$Nest$sfputsThread(Landroid/os/HandlerThread;)V

    invoke-static {v1}, Landroid/provider/FontsContract;->-$$Nest$sfputsHandler(Landroid/os/Handler;)V

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method
