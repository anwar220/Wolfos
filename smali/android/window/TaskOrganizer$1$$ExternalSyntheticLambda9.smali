# classes4.dex

.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$2:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;->f$0:Landroid/window/TaskOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p3, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;->f$2:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;->f$0:Landroid/window/TaskOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;->f$2:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer$1;->lambda$onTaskAppeared$4$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method
