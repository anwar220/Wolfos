# classes4.dex

.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskOrganizer$1;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$0:Landroid/window/TaskOrganizer$1;

    iput p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$1:I

    iput-boolean p3, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$0:Landroid/window/TaskOrganizer$1;

    iget v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$1:I

    iget-boolean v2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer$1;->lambda$enterSplitScreen$9$android-window-TaskOrganizer$1(IZ)V

    return-void
.end method
