# classes3.dex

.class Landroid/view/ScrollCaptureConnection$SafeCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mSignal:Landroid/os/CancellationSignal;

.field private final mValue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureConnection$SafeCallback;->mSignal:Landroid/os/CancellationSignal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection$SafeCallback;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Landroid/view/ScrollCaptureConnection$SafeCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 4

    new-instance v0, Landroid/view/ScrollCaptureConnection$RunnableCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/ScrollCaptureConnection$RunnableCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/view/ScrollCaptureConnection$ConsumerCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/ScrollCaptureConnection$ConsumerCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic lambda$maybeAccept$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final maybeAccept(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection$SafeCallback;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection$SafeCallback;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection$SafeCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/view/ScrollCaptureConnection$SafeCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroid/view/ScrollCaptureConnection$SafeCallback$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method
