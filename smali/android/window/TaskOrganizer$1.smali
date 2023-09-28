# classes4.dex

.class Landroid/window/TaskOrganizer$1;
.super Landroid/window/ITaskOrganizer$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/window/TaskOrganizer;


# direct methods
.method constructor <init>(Landroid/window/TaskOrganizer;)V
    .registers 2

    iput-object p1, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskOrganizer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public copySplashScreenView(I)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enterSplitScreen(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;-><init>(Landroid/window/TaskOrganizer$1;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitSplitScreen(I)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$addStartingWindow$0$android-window-TaskOrganizer$1(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method synthetic lambda$copySplashScreenView$2$android-window-TaskOrganizer$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->copySplashScreenView(I)V

    return-void
.end method

.method synthetic lambda$enterSplitScreen$9$android-window-TaskOrganizer$1(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->enterSplitScreen(IZ)V

    return-void
.end method

.method synthetic lambda$exitSplitScreen$11$android-window-TaskOrganizer$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->exitSplitScreen(I)V

    return-void
.end method

.method synthetic lambda$onAppSplashScreenViewRemoved$3$android-window-TaskOrganizer$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onAppSplashScreenViewRemoved(I)V

    return-void
.end method

.method synthetic lambda$onBackPressedOnTaskRoot$7$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic lambda$onImeDrawnOnTask$8$android-window-TaskOrganizer$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onImeDrawnOnTask(I)V

    return-void
.end method

.method synthetic lambda$onTaskAppeared$4$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method synthetic lambda$onTaskInfoChanged$6$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic lambda$onTaskVanished$5$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic lambda$removeStartingWindow$1$android-window-TaskOrganizer$1(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method synthetic lambda$swapSplitTasks$10$android-window-TaskOrganizer$1()V
    .registers 2

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0}, Landroid/window/TaskOrganizer;->swapSplitTasks()V

    return-void
.end method

.method public onAppSplashScreenViewRemoved(I)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImeDrawnOnTask(I)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda11;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public swapSplitTasks()V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskOrganizer$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
