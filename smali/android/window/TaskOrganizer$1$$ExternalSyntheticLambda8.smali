# classes4.dex

.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic f$1:Landroid/window/StartingWindowInfo;

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;->f$0:Landroid/window/TaskOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;->f$1:Landroid/window/StartingWindowInfo;

    iput-object p3, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;->f$0:Landroid/window/TaskOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;->f$1:Landroid/window/StartingWindowInfo;

    iget-object v2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;->f$2:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer$1;->lambda$addStartingWindow$0$android-window-TaskOrganizer$1(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    return-void
.end method
