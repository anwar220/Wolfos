# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onFrameCommit(Z)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl;->lambda$addFrameCommitCallbackIfNeeded$7$android-view-ViewRootImpl(Ljava/util/ArrayList;Z)V

    return-void
.end method
