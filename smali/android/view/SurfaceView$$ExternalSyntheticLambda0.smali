# classes3.dex

.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView;

.field public final synthetic f$1:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

.field public final synthetic f$2:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView;

    iput-object p2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    iput-object p3, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$2:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    iget-object v2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;->f$2:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceView;->lambda$handleSyncBufferCallback$1$android-view-SurfaceView(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-void
.end method
