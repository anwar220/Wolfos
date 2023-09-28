# classes4.dex

.class Landroid/window/SurfaceSyncer$SyncSet$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/SurfaceSyncer$SyncBufferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/SurfaceSyncer$SyncSet;->addSyncableSurface(Landroid/window/SurfaceSyncer$SyncTarget;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/window/SurfaceSyncer$SyncSet;


# direct methods
.method constructor <init>(Landroid/window/SurfaceSyncer$SyncSet;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferReady(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-static {v0}, Landroid/window/SurfaceSyncer$SyncSet;->-$$Nest$fgetmLock(Landroid/window/SurfaceSyncer$SyncSet;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_12

    :try_start_9
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-static {v1}, Landroid/window/SurfaceSyncer$SyncSet;->-$$Nest$fgetmTransaction(Landroid/window/SurfaceSyncer$SyncSet;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_12
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-static {v1}, Landroid/window/SurfaceSyncer$SyncSet;->-$$Nest$fgetmPendingSyncs(Landroid/window/SurfaceSyncer$SyncSet;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet$1;->this$0:Landroid/window/SurfaceSyncer$SyncSet;

    invoke-static {v1}, Landroid/window/SurfaceSyncer$SyncSet;->-$$Nest$mcheckIfSyncIsComplete(Landroid/window/SurfaceSyncer$SyncSet;)V

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v1
.end method
