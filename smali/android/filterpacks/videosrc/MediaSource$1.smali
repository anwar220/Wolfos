# classes.dex

.class Landroid/filterpacks/videosrc/MediaSource$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .registers 2

    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "MediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer sent dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmGotSize(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmOrientation(Landroid/filterpacks/videosrc/MediaSource;)I

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmOrientation(Landroid/filterpacks/videosrc/MediaSource;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_45

    goto :goto_4f

    :cond_45
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmOutputFormat(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_58

    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmOutputFormat(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    :goto_58
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0, p2}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fputmWidth(Landroid/filterpacks/videosrc/MediaSource;I)V

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0, p3}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fputmHeight(Landroid/filterpacks/videosrc/MediaSource;I)V

    goto :goto_82

    :cond_63
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmOutputFormat(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_7b

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fgetmOutputFormat(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_82

    :cond_7b
    const-string v0, "MediaSource"

    const-string v1, "Multiple video size change events received!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter v0

    :try_start_85
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterpacks/videosrc/MediaSource;->-$$Nest$fputmGotSize(Landroid/filterpacks/videosrc/MediaSource;Z)V

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_92

    throw v1
.end method