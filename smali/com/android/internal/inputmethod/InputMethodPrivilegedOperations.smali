# classes4.dex

.class public final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodPrivilegedOperations"


# instance fields
.field private final mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;-><init>(Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder-IA;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    return-void
.end method


# virtual methods
.method public applyImeVisibilityAsync(Landroid/os/IBinder;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->applyImeVisibilityAsync(Landroid/os/IBinder;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 7

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, p2, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v2

    return-object v1
.end method

.method public hideMySoftInput(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->hideMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notifyUserActionAsync()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->notifyUserActionAsync()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public onStylusHandwritingReady(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->onStylusHandwritingReady(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reportFullscreenModeAsync(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->reportFullscreenModeAsync(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reportStartInputAsync(Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->reportStartInputAsync(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public resetStylusHandwriting(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->resetStylusHandwriting(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendKeyboardCaps()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->sendKeyboardCaps()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    .registers 3

    const-string/jumbo v0, "privOps must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V

    return-void
.end method

.method public setImeWindowStatusAsync(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setImeWindowStatusAsync(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setInputMethod(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public shouldOfferSwitchingToNextInputMethod()Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public showMySoftInput(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->showMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public switchToNextInputMethod(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public switchToPreviousInputMethod()Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public updateSessionId(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->updateSessionId(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public updateStatusIconAsync(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
