# classes.dex

.class Landroid/filterpacks/videosrc/CameraSource$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/CameraSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/CameraSource;)V
    .registers 2

    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/CameraSource;->-$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/CameraSource;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "CameraSource"

    const-string v1, "New frame from camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    monitor-enter v0

    :try_start_12
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterpacks/videosrc/CameraSource;->-$$Nest$fputmNewFrameAvailable(Landroid/filterpacks/videosrc/CameraSource;Z)V

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v1
.end method
