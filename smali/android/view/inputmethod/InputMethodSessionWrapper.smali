# classes2.dex

.class final Landroid/view/inputmethod/InputMethodSessionWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSessionWrapper"


# instance fields
.field private final mSession:Lcom/android/internal/view/IInputMethodSession;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/IInputMethodSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    return-void
.end method

.method public static createOrNull(Lcom/android/internal/view/IInputMethodSession;)Landroid/view/inputmethod/InputMethodSessionWrapper;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodSessionWrapper;-><init>(Lcom/android/internal/view/IInputMethodSession;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method


# virtual methods
.method appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method finishInput()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishInput()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateCursor(Landroid/graphics/Rect;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method updateSelection(IIIIII)V
    .registers 14

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void
.end method

.method viewClicked(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSessionWrapper;->mSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "InputMethodSessionWrapper"

    const-string v2, "IME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
