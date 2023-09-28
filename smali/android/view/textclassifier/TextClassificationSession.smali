# classes2.dex

.class final Landroid/view/textclassifier/TextClassificationSession;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;,
        Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationSession"


# instance fields
.field private final mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final mCleaner:Lsun/misc/Cleaner;

.field private final mDelegate:Landroid/view/textclassifier/TextClassifier;

.field private mDestroyed:Z

.field private final mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

.field private final mLock:Ljava/lang/Object;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method constructor <init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    new-instance v2, Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-direct {v2}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>()V

    iput-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    new-instance v3, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-direct {v3, v2, v0}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V

    iput-object v3, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->initializeRemoteSession()V

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;

    invoke-direct {v0, v3, v1}, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;-><init>(Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {p0, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mCleaner:Lsun/misc/Cleaner;

    return-void
.end method

.method private checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-boolean v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    if-nez v2, :cond_13

    monitor-exit v1

    return-object v0

    :cond_13
    monitor-exit v1

    goto :goto_18

    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v2

    :cond_18
    :goto_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This TextClassification session has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeRemoteSession()V
    .registers 4

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    instance-of v1, v0, Landroid/view/textclassifier/SystemTextClassifier;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/view/textclassifier/SystemTextClassifier;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier;->initializeRemoteSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda1;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassification$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda6;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextLanguage$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextLanguage;

    return-object v0
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda2;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextLinks$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextLinks;

    return-object v0
.end method

.method public getMaxGenerateLinksTextLength()I
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;-><init>(Landroid/view/textclassifier/TextClassifier;)V

    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method synthetic lambda$classifyText$1$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$detectLanguage$4$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$generateLinks$2$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onSelectionEvent$5$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/SelectionEvent;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->sanitizeEvent(Landroid/view/textclassifier/SelectionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "TextClassificationSession"

    const-string v2, "Error reporting text classifier selection event"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onTextClassifierEvent$6$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextClassifierEvent;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object v0, p1, Landroid/view/textclassifier/TextClassifierEvent;->mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "TextClassificationSession"

    const-string v2, "Error reporting text classifier event"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$suggestConversationActions$3$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$suggestSelection$0$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda4;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/SelectionEvent;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassifierEvent;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/ConversationActions$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/ConversationActions;

    return-object v0
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .registers 3

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextSelection$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextSelection;

    return-object v0
.end method
