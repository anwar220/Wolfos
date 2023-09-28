# classes.dex

.class final Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/accessibilityservice/AccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6rJ58BrwtlvbXFISNRLTVSGKcos(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishSession()V

    return-void
.end method

.method public static synthetic $r8$lambda$leImIQwBFx_Joi1nUXgEU37Wnrw(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishInput()V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityInputMethodSession;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doFinishInput()V
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->finishInput()V

    :cond_d
    return-void
.end method

.method private doFinishSession()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 5

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    :cond_d
    return-void
.end method

.method private doUpdateSelection(IIIIII)V
    .registers 15

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    if-eqz v0, :cond_14

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->updateSelection(IIIIII)V

    :cond_14
    return-void
.end method


# virtual methods
.method public finishInput()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishInput()V

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method public finishSession()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishSession()V

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    return-object v0
.end method

.method public invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 6

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method synthetic lambda$invalidateInput$1$android-accessibilityservice-AccessibilityInputMethodSessionWrapper(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method synthetic lambda$updateSelection$0$android-accessibilityservice-AccessibilityInputMethodSessionWrapper(IIIIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doUpdateSelection(IIIIII)V

    return-void
.end method

.method public updateSelection(IIIIII)V
    .registers 18

    move-object v8, p0

    iget-object v0, v8, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doUpdateSelection(IIIIII)V

    goto :goto_25

    :cond_11
    iget-object v9, v8, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v10, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;IIIIII)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_25
    return-void
.end method
