# classes3.dex

.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView;

.field public final synthetic f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$0:Landroid/view/SurfaceView;

    iput-object p2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iput p3, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$1:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget v2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceView;->lambda$handleSyncNoBuffer$3$android-view-SurfaceView(Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V

    return-void
.end method
