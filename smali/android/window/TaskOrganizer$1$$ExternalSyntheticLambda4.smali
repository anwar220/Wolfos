# classes4.dex

.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskOrganizer$1;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskOrganizer$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;->f$0:Landroid/window/TaskOrganizer$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;->f$0:Landroid/window/TaskOrganizer$1;

    invoke-virtual {v0}, Landroid/window/TaskOrganizer$1;->lambda$swapSplitTasks$10$android-window-TaskOrganizer$1()V

    return-void
.end method
