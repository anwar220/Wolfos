# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;->f$0:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->lambda$addFrameCommitCallbackIfNeeded$6(Ljava/util/ArrayList;)V

    return-void
.end method
