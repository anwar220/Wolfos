# classes4.dex

.class Lcom/android/server/ResettableTimeout$T;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ResettableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ResettableTimeout;


# direct methods
.method private constructor <init>(Lcom/android/server/ResettableTimeout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$T-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-static {v0}, Lcom/android/server/ResettableTimeout;->-$$Nest$fgetmLock(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :goto_9
    monitor-enter p0

    :try_start_a
    iget-object v0, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-static {v0}, Lcom/android/server/ResettableTimeout;->-$$Nest$fgetmOffAt(Lcom/android/server/ResettableTimeout;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/ResettableTimeout;->-$$Nest$fputmOffCalled(Lcom/android/server/ResettableTimeout;Z)V

    iget-object v2, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-virtual {v2}, Lcom/android/server/ResettableTimeout;->off()V

    iget-object v2, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/ResettableTimeout;->-$$Nest$fputmThread(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)V

    monitor-exit p0

    return-void

    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_35

    :try_start_2f
    invoke-static {v0, v1}, Lcom/android/server/ResettableTimeout$T;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v2

    :goto_34
    goto :goto_9

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method
