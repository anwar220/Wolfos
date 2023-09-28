# classes4.dex

.class final Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
.super Ljava/lang/Object;


# instance fields
.field private final mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private final mSessionId:I


# direct methods
.method private constructor <init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iput p2, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mSessionId:I

    return-void
.end method

.method public static create(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-object v0
.end method


# virtual methods
.method public clearMetaKeyStates(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public cloneWithSessionId(I)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
    .registers 4

    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-object v0
.end method

.method public commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .registers 3

    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public deleteSurroundingText(II)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
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
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
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
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_17
    return-object v0
.end method

.method public isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public performContextMenuAction(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public performEditorAction(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public setSelection(II)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method
