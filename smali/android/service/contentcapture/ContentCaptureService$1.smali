# classes3.dex

.class Landroid/service/contentcapture/ContentCaptureService$1;
.super Landroid/service/contentcapture/IContentCaptureService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/contentcapture/ContentCaptureService;


# direct methods
.method constructor <init>(Landroid/service/contentcapture/ContentCaptureService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentCaptureService$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onActivityEvent$7(Ljava/lang/Object;Landroid/service/contentcapture/ActivityEvent;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnActivityEvent(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method static synthetic lambda$onActivitySnapshot$3(Ljava/lang/Object;ILandroid/service/contentcapture/SnapshotData;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnActivitySnapshot(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method static synthetic lambda$onConnected$0(Ljava/lang/Object;Landroid/os/IBinder;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnConnected(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$onDataRemovalRequest$5(Ljava/lang/Object;Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDataRemovalRequest(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method static synthetic lambda$onDataShared$6(Ljava/lang/Object;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDataShared(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$1(Ljava/lang/Object;)V
    .registers 2

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDisconnected(Landroid/service/contentcapture/ContentCaptureService;)V

    return-void
.end method

.method static synthetic lambda$onSessionFinished$4(Ljava/lang/Object;I)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleFinishSession(Landroid/service/contentcapture/ContentCaptureService;I)V

    return-void
.end method

.method static synthetic lambda$onSessionStarted$2(Ljava/lang/Object;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 12

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnCreateSession(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method


# virtual methods
.method public onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 5

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V
    .registers 7

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConnected(Landroid/os/IBinder;ZZ)V
    .registers 7

    sput-boolean p2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    sput-boolean p3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 5

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDisconnected()V
    .registers 4

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSessionFinished(I)V
    .registers 6

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 14

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
