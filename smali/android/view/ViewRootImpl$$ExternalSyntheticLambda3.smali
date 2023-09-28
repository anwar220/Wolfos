# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda3;->f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda3;->f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->lambda$performDraw$8(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-void
.end method
