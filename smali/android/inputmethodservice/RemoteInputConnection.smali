# classes2.dex

.class final Landroid/inputmethodservice/RemoteInputConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "RemoteInputConnection"


# instance fields
.field private final mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private final mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

.field private final mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RemoteInputConnection;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->cloneWithSessionId(I)Lcom/android/internal/inputmethod/IInputContextInvoker;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;",
            "Lcom/android/internal/view/IInputContext;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;-><init>(Ljava/lang/ref/WeakReference;Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-static {p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->create(Lcom/android/internal/view/IInputContext;)Lcom/android/internal/inputmethod/IInputContextInvoker;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    iput-object p3, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method

.method private notifyUserActionIfNecessary()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->notifyUserActionIfNecessary()V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public closeConnection()V
    .registers 1

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 11

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    invoke-interface {v0, p1, p0}, Landroid/inputmethodservice/InputMethodServiceInternal;->exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V

    :cond_1a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "commitContent()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result v1

    return v1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_b
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_b
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->deleteSurroundingTextInCodePoints(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 9

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getCursorCapsMode()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {p1, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object v3

    const-string v4, "RemoteInputConnection#getCursorCapsMode"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_38
    return v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 10

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getExtractedText()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ExtractedText;

    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-static {p1, p2, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object v3

    const-string v4, "RemoteInputConnection#getExtractedText"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_3a
    return-object v1
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 9

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getSelectedText()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-static {p1, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B

    move-result-object v3

    const-string v4, "RemoteInputConnection#getSelectedText"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_3a
    return-object v1
.end method

.method public getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 11

    const-string v0, " is invalid and always results in null result."

    const-string v1, "RemoteInputConnection"

    if-gez p1, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforeLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-gez p2, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    return-object v0

    :cond_46
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getSurroundingText()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/SurroundingText;

    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    if-eqz v2, :cond_76

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-static {p1, p2, p3, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object v3

    const-string v4, "RemoteInputConnection#getSurroundingText"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_76
    return-object v1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 10

    if-gez p1, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid and always results in null result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    return-object v0

    :cond_2a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getTextAfterCursor()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-static {p1, p2, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object v3

    const-string v4, "RemoteInputConnection#getTextAfterCursor"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_5a
    return-object v1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 10

    if-gez p1, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid and always results in null result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    return-object v0

    :cond_2a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getTextBeforeCursor()"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v2}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-static {p1, p2, v1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object v3

    const-string v4, "RemoteInputConnection#getTextBeforeCursor"

    invoke-interface {v2, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_5a
    return-object v1
.end method

.method public isSameConnection(Lcom/android/internal/view/IInputContext;)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->isSameConnection(Lcom/android/internal/view/IInputContext;)Z

    move-result v0

    return v0
.end method

.method public performContextMenuAction(I)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performSpellCheck()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->performSpellCheck()Z

    move-result v0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .registers 11

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    iget-object v6, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v7, 0x7d0

    const-string v4, "RemoteInputConnection"

    const-string v5, "requestCursorUpdates()"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result v3

    return v3
.end method

.method public requestCursorUpdates(II)Z
    .registers 12

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    iget-object v6, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v7, 0x7d0

    const-string v4, "RemoteInputConnection"

    const-string v5, "requestCursorUpdates()"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result v3

    return v3
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_b
    return v0
.end method

.method public setComposingRegion(II)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_b
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_b
    return v0
.end method

.method public setImeConsumesInput(Z)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setImeConsumesInput(Z)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Lcom/android/internal/inputmethod/IInputContextInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputContextInvoker;->setSelection(II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInputConnection{idHash=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
