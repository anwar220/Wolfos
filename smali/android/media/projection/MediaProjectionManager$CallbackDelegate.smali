# classes2.dex

.class final Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackDelegate"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;)Landroid/media/projection/MediaProjectionManager$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    return-object p0
.end method

.method public constructor <init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    if-nez p2, :cond_d

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    :cond_d
    iput-object p2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
