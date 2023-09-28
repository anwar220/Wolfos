# classes2.dex

.class Landroid/media/AudioRecordingMonitorImpl$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioRecordingMonitorImpl;->beginRecordingCallbackHandling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioRecordingMonitorImpl;


# direct methods
.method constructor <init>(Landroid/media/AudioRecordingMonitorImpl;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/AudioRecordingMonitorImpl$2;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;Ljava/util/ArrayList;)V
    .registers 3

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    const-string v0, "android.media.AudioRecordingMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :pswitch_20  #0x1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_25

    return-void

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl$2;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {v1}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordCallbackLock(Landroid/media/AudioRecordingMonitorImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_38
    iget-object v2, p0, Landroid/media/AudioRecordingMonitorImpl$2;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {v2}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordCallbackList(Landroid/media/AudioRecordingMonitorImpl;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_46

    monitor-exit v1

    return-void

    :cond_46
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Landroid/media/AudioRecordingMonitorImpl$2;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {v3}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordCallbackList(Landroid/media/AudioRecordingMonitorImpl;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_7b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_56
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    iget-object v6, v5, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5, v0}, Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;Ljava/util/ArrayList;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_70
    .catchall {:try_start_56 .. :try_end_70} :catchall_76

    goto :goto_5a

    :cond_71
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_7e

    :catchall_76
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :catchall_7b
    move-exception v2

    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v2

    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_20  #00000001
    .end packed-switch
.end method
