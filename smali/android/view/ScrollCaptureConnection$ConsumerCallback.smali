# classes3.dex

.class final Landroid/view/ScrollCaptureConnection$ConsumerCallback;
.super Landroid/view/ScrollCaptureConnection$SafeCallback;

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConsumerCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/ScrollCaptureConnection$SafeCallback<",
        "Ljava/util/function/Consumer<",
        "TT;>;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ScrollCaptureConnection$SafeCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$accept$0(Ljava/lang/Object;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Landroid/view/ScrollCaptureConnection$ConsumerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/view/ScrollCaptureConnection$ConsumerCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureConnection$ConsumerCallback;->maybeAccept(Ljava/util/function/Consumer;)V

    return-void
.end method
