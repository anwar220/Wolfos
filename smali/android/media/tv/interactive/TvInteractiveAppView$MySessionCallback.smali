# classes2.dex

.class Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;
.super Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field final mIAppServiceId:Ljava/lang/String;

.field mType:I

.field final synthetic this$0:Landroid/media/tv/interactive/TvInteractiveAppView;


# direct methods
.method constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppView;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;-><init>()V

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mType:I

    return-void
.end method


# virtual methods
.method synthetic lambda$onBiInteractiveAppCreated$2$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onBiInteractiveAppCreated(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method synthetic lambda$onCommandRequest$0$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onPlaybackCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method synthetic lambda$onRequestCurrentChannelLcn$5$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentChannelLcn(Ljava/lang/String;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method synthetic lambda$onRequestCurrentChannelUri$4$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentChannelUri(Ljava/lang/String;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method synthetic lambda$onRequestStreamVolume$6$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestStreamVolume(Ljava/lang/String;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method synthetic lambda$onRequestTrackInfoList$7$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTrackInfoList(Ljava/lang/String;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method synthetic lambda$onSessionStateChanged$1$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback(II)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onStateChanged(Ljava/lang/String;II)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method synthetic lambda$onSetVideoBounds$3$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onSetVideoBounds(Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onBiInteractiveAppCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onBiInteractiveAppCreated - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onCommandRequest(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onCommandRequest - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onLayoutSurface(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;IIII)V
    .registers 8

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onLayoutSurface - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewTop(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p4}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewRight(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p5}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->requestLayout()V

    return-void
.end method

.method public onRequestCurrentChannelLcn(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onRequestCurrentChannelLcn - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onRequestCurrentChannelUri(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onRequestCurrentChannelUri - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onRequestCurrentTvInputId(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onRequestCurrentTvInputId - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentTvInputId(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onRequestSigning - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_27
    return-void
.end method

.method public onRequestStreamVolume(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onRequestStreamVolume - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onRequestTrackInfoList(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onRequestTrackInfoList - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_15

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onSessionCreated - session already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->release()V

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSession(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    if-eqz p1, :cond_50

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$msetSessionSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v2

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;III)V

    :cond_4a
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mcreateSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    goto :goto_56

    :cond_50
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    :goto_56
    return-void
.end method

.method public onSessionReleased(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onSessionReleased - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmMediaViewCreated(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmMediaViewFrame(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSession(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    return-void
.end method

.method public onSessionStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;II)V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onSessionStateChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onSetVideoBounds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onSetVideoBounds - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/graphics/Rect;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onTeletextAppStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_10

    const-string v0, "TvInteractiveAppView"

    const-string v1, "onTeletextAppStateChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onTeletextAppStateChanged(Ljava/lang/String;I)V

    :cond_23
    return-void
.end method
