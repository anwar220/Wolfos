# classes.dex

.class Landroid/app/HomeVisibilityListener$1;
.super Landroid/app/IProcessObserver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/HomeVisibilityListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/HomeVisibilityListener;


# direct methods
.method constructor <init>(Landroid/app/HomeVisibilityListener;)V
    .registers 2

    iput-object p1, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method private refreshHomeVisibility()V
    .registers 3

    iget-object v0, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    invoke-static {v0}, Landroid/app/HomeVisibilityListener;->-$$Nest$misHomeActivityVisible(Landroid/app/HomeVisibilityListener;)Z

    move-result v0

    iget-object v1, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    iget-boolean v1, v1, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    if-eq v1, v0, :cond_18

    iget-object v1, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    iput-boolean v0, v1, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    new-instance v1, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/HomeVisibilityListener$1;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_18
    return-void
.end method


# virtual methods
.method synthetic lambda$refreshHomeVisibility$0$android-app-HomeVisibilityListener$1()V
    .registers 3

    iget-object v0, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    iget-boolean v1, v0, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    invoke-virtual {v0, v1}, Landroid/app/HomeVisibilityListener;->onHomeVisibilityChanged(Z)V

    return-void
.end method

.method synthetic lambda$refreshHomeVisibility$1$android-app-HomeVisibilityListener$1()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    invoke-static {v0}, Landroid/app/HomeVisibilityListener;->-$$Nest$fgetmExecutor(Landroid/app/HomeVisibilityListener;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/HomeVisibilityListener$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener$1;->refreshHomeVisibility()V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener$1;->refreshHomeVisibility()V

    return-void
.end method
