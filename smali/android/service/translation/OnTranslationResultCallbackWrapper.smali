# classes3.dex

.class final Landroid/service/translation/OnTranslationResultCallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/translation/TranslationResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnTranslationResultCallback"


# instance fields
.field private final mCallback:Landroid/service/translation/ITranslationCallback;

.field private final mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/service/translation/ITranslationCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/translation/ITranslationCallback;

    iput-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCallback:Landroid/service/translation/ITranslationCallback;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private assertNotCalled()V
    .registers 3

    iget-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Landroid/view/translation/TranslationResponse;)V
    .registers 5

    invoke-direct {p0}, Landroid/service/translation/OnTranslationResultCallbackWrapper;->assertNotCalled()V

    iget-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->isFinalResponse()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_28

    :try_start_f
    iget-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCallback:Landroid/service/translation/ITranslationCallback;

    invoke-interface {v0, p1}, Landroid/service/translation/ITranslationCallback;->onTranslationResponse(Landroid/view/translation/TranslationResponse;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v0

    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_23

    const-string v1, "OnTranslationResultCallback"

    const-string v2, "Process is dead, ignore."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called with complete response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/translation/TranslationResponse;

    invoke-virtual {p0, p1}, Landroid/service/translation/OnTranslationResultCallbackWrapper;->accept(Landroid/view/translation/TranslationResponse;)V

    return-void
.end method
