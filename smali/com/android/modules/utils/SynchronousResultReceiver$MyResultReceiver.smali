# classes4.dex

.class final Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;
.super Lcom/android/modules/utils/ISynchronousResultReceiver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/utils/SynchronousResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/modules/utils/SynchronousResultReceiver;


# direct methods
.method private constructor <init>(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;->this$0:Lcom/android/modules/utils/SynchronousResultReceiver;

    invoke-direct {p0}, Lcom/android/modules/utils/ISynchronousResultReceiver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/modules/utils/SynchronousResultReceiver;Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;-><init>(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    return-void
.end method


# virtual methods
.method public send(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V
    .registers 4

    move-object v0, p1

    iget-object v1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;->this$0:Lcom/android/modules/utils/SynchronousResultReceiver;

    invoke-static {v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->-$$Nest$mgetFuture(Lcom/android/modules/utils/SynchronousResultReceiver;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method
