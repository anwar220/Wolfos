# classes4.dex

.class Landroid/window/DisplayAreaOrganizer$1;
.super Landroid/window/IDisplayAreaOrganizer$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/DisplayAreaOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/window/DisplayAreaOrganizer;


# direct methods
.method constructor <init>(Landroid/window/DisplayAreaOrganizer;)V
    .registers 2

    iput-object p1, p0, Landroid/window/DisplayAreaOrganizer$1;->this$0:Landroid/window/DisplayAreaOrganizer;

    invoke-direct {p0}, Landroid/window/IDisplayAreaOrganizer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDisplayAreaAppeared$0$android-window-DisplayAreaOrganizer$1(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .registers 4

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1;->this$0:Landroid/window/DisplayAreaOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/DisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method synthetic lambda$onDisplayAreaInfoChanged$2$android-window-DisplayAreaOrganizer$1(Landroid/window/DisplayAreaInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1;->this$0:Landroid/window/DisplayAreaOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/DisplayAreaOrganizer;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V

    return-void
.end method

.method synthetic lambda$onDisplayAreaVanished$1$android-window-DisplayAreaOrganizer$1(Landroid/window/DisplayAreaInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1;->this$0:Landroid/window/DisplayAreaOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/DisplayAreaOrganizer;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V

    return-void
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1;->this$0:Landroid/window/DisplayAreaOrganizer;

    invoke-static {v0}, Landroid/window/DisplayAreaOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/DisplayAreaOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/DisplayAreaOrganizer$1;Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1;->this$0:Landroid/window/DisplayAreaOrganizer;

    invoke-static {v0}, Landroid/window/DisplayAreaOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/DisplayAreaOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/DisplayAreaOrganizer$1;Landroid/window/DisplayAreaInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1;->this$0:Landroid/window/DisplayAreaOrganizer;

    invoke-static {v0}, Landroid/window/DisplayAreaOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/DisplayAreaOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/DisplayAreaOrganizer$1;Landroid/window/DisplayAreaInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
