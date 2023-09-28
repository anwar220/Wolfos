# classes.dex

.class Landroid/app/Activity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Window$WindowControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterPictureInPictureModeIfPossible()V
    .registers 2

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    :cond_f
    return-void
.end method

.method public getWindowingMode()I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v2}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->handleFreeformModeRequst(Landroid/os/IBinder;I)I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move v0, v1

    goto :goto_16

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_16
    return v0
.end method

.method public isTaskRoot()Z
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    if-ltz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public toggleFreeformWindowingMode()V
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    return-void
.end method

.method public updateNavigationBarColor(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public updateStatusBarColor(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
