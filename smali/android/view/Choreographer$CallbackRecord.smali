# classes3.dex

.class final Landroid/view/Choreographer$CallbackRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field public action:Ljava/lang/Object;

.field public dueTime:J

.field public next:Landroid/view/Choreographer$CallbackRecord;

.field public token:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer$CallbackRecord-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/Choreographer$CallbackRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public run(J)V
    .registers 5

    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    invoke-static {}, Landroid/view/Choreographer;->-$$Nest$sfgetFRAME_CALLBACK_TOKEN()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    goto :goto_17

    :cond_10
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_17
    return-void
.end method

.method run(Landroid/view/Choreographer$FrameData;)V
    .registers 4

    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    invoke-static {}, Landroid/view/Choreographer;->-$$Nest$sfgetVSYNC_CALLBACK_TOKEN()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer$VsyncCallback;

    invoke-interface {v0, p1}, Landroid/view/Choreographer$VsyncCallback;->onVsync(Landroid/view/Choreographer$FrameData;)V

    goto :goto_17

    :cond_10
    invoke-virtual {p1}, Landroid/view/Choreographer$FrameData;->getFrameTimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    :goto_17
    return-void
.end method
