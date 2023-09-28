# classes4.dex

.class public interface abstract Lcom/android/internal/listeners/ListenerTransport;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$execute$0(Lcom/android/internal/listeners/ListenerTransport;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-interface {p0}, Lcom/android/internal/listeners/ListenerTransport;->getListener()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/android/internal/listeners/ListenerTransport;->getListener()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/listeners/ListenerTransport;Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract getListener()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT",
            "Listener;"
        }
    .end annotation
.end method

.method public abstract unregister()V
.end method
