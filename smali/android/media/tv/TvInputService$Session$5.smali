# classes2.dex

.class Landroid/media/tv/TvInputService$Session$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTracksChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$tracksCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$5;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$5;->val$tracksCopy:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$5;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$5;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$5;->val$tracksCopy:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onTracksChanged(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "TvInputService"

    const-string v2, "error in notifyTracksChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method