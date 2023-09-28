# classes2.dex

.class Landroid/inputmethodservice/InlineSuggestionSession;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;
    }
.end annotation


# static fields
.field static final EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

.field private static final TAG:Ljava/lang/String; = "ImsInlineSuggestionSession"


# instance fields
.field private final mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

.field private mCallbackInvoked:Z

.field private final mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPreviousResponseIsEmpty:Ljava/lang/Boolean;

.field private final mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

.field private final mRequestSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

.field private final mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmMainThreadHandler(Landroid/inputmethodservice/InlineSuggestionSession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    sput-object v0, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/InlineSuggestionsRequestInfo;",
            "Lcom/android/internal/view/IInlineSuggestionsRequestCallback;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;",
            "Landroid/inputmethodservice/InlineSuggestionSessionController;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestSupplier:Ljava/util/function/Function;

    iput-object p4, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    iput-object p5, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseConsumer:Ljava/util/function/Consumer;

    iput-object p6, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    iput-object p7, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mPreviousResponseIsEmpty:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mPreviousResponseIsEmpty:Ljava/lang/Boolean;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method getRequestCallback()Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    return-object v0
.end method

.method getRequestInfo()Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    return-object v0
.end method

.method handleOnInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IME receives response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsInlineSuggestionSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    return-void
.end method

.method invalidate()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "ImsInlineSuggestionSession"

    const-string v2, "onInlineSuggestionsSessionInvalidated() remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    :cond_1f
    return-void
.end method

.method isCallbackInvoked()Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    return v0
.end method

.method makeInlineSuggestionRequestUncheck()V
    .registers 5

    const-string v0, "ImsInlineSuggestionSession"

    iget-boolean v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    invoke-virtual {v2}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;->getUiExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-nez v1, :cond_26

    sget-boolean v2, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v2, :cond_20

    const-string v2, "onCreateInlineSuggestionsRequest() returned null request"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V

    goto :goto_41

    :cond_26
    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->setHostInputToken(Landroid/os/IBinder;)V

    invoke-virtual {v1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->filterContentTypes()V

    new-instance v2, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;-><init>(Landroid/inputmethodservice/InlineSuggestionSession;Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl-IA;)V

    iput-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    iget-object v3, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_41} :catch_42

    :goto_41
    goto :goto_59

    :catch_42
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeInlinedSuggestionsRequest() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    return-void
.end method

.method shouldSendImeStatus()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
