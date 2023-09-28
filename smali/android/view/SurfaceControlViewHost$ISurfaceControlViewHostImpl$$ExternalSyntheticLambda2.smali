# classes3.dex

.class public final synthetic Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;->f$0:Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;->f$0:Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$onDispatchDetachedFromWindow$1$android-view-SurfaceControlViewHost$ISurfaceControlViewHostImpl()V

    return-void
.end method
