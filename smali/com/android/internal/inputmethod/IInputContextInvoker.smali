# classes4.dex

.class public final Lcom/android/internal/inputmethod/IInputContextInvoker;
.super Ljava/lang/Object;


# instance fields
.field private final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private final mSessionId:I


# direct methods
.method private constructor <init>(Lcom/android/internal/view/IInputContext;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iput p2, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mSessionId:I

    return-void
.end method

.method public static create(Lcom/android/internal/view/IInputContext;)Lcom/android/internal/inputmethod/IInputContextInvoker;
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/inputmethod/IInputContextInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/IInputContextInvoker;-><init>(Lcom/android/internal/view/IInputContext;I)V

    return-object v0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputContext;->beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public clearMetaKeyStates(I)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public cloneWithSessionId(I)Lcom/android/internal/inputmethod/IInputContextInvoker;
    .registers 4

    new-instance v0, Lcom/android/internal/inputmethod/IInputContextInvoker;

    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;-><init>(Lcom/android/internal/view/IInputContext;I)V

    return-object v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputContentInfo;",
            "I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/IInputContext;->commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_17
    return-object v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/view/IInputContext;->commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .registers 3

    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public endBatchEdit()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputContext;->endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public finishComposingText()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputContext;->finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_13
    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/ExtractedTextRequest;",
            "I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/ExtractedText;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/view/IInputContext;->getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_13
    return-object v0
.end method

.method public getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/view/IInputContext;->getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_13
    return-object v0
.end method

.method public getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/IInputContext;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_17
    return-object v0
.end method

.method public getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_13
    return-object v0
.end method

.method public getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_13
    return-object v0
.end method

.method public isSameConnection(Lcom/android/internal/view/IInputContext;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public performContextMenuAction(I)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public performEditorAction(I)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public performSpellCheck()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputContext;->performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/view/IInputContext;->requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_13
    return-object v0
.end method

.method public requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/IInputContext;->requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_17
    return-object v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setComposingRegion(II)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/view/IInputContext;->setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/view/IInputContext;->setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setImeConsumesInput(Z)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputContext;->setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setSelection(II)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputContextInvoker;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
