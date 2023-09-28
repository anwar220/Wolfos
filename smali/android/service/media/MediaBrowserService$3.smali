# classes3.dex

.class Landroid/service/media/MediaBrowserService$3;
.super Landroid/service/media/MediaBrowserService$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result<",
        "Ljava/util/List<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService$3;->onResultSent(Ljava/util/List;I)V

    return-void
.end method

.method onResultSent(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eq v0, v1, :cond_17

    return-void

    :cond_17
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    invoke-static {v0, p1, v1}, Landroid/service/media/MediaBrowserService;->-$$Nest$mapplyOptions(Landroid/service/media/MediaBrowserService;Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    goto :goto_25

    :cond_24
    move-object v0, p1

    :goto_25
    if-nez v0, :cond_29

    const/4 v1, 0x0

    goto :goto_32

    :cond_29
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    :goto_32
    :try_start_32
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    invoke-interface {v2, v3, v1, v4}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_3e

    goto :goto_67

    :catch_3e
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onLoadChildren() failed for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v4, v4, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    return-void
.end method
