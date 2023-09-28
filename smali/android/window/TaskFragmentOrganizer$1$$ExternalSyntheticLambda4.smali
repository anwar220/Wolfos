# classes4.dex

.class public final synthetic Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskFragmentOrganizer$1;

.field public final synthetic f$1:Landroid/window/TaskFragmentInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;->f$1:Landroid/window/TaskFragmentInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;->f$1:Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentOrganizer$1;->lambda$onTaskFragmentAppeared$0$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method
