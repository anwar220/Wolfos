# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;->f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$8$$ExternalSyntheticLambda0;->f$0:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, p1}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
