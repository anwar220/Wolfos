# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput p3, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget v2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->lambda$createSyncIfNeeded$4$android-view-ViewRootImpl(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method
