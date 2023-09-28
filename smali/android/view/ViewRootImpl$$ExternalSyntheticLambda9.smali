# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;->f$0:Landroid/view/ViewRootImpl;

    iput p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;->f$0:Landroid/view/ViewRootImpl;

    iget v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl;->lambda$createSyncIfNeeded$5$android-view-ViewRootImpl(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
