# classes.dex

.class Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;
.super Landroid/app/contentsuggestions/ISelectionsCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionsCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/contentsuggestions/ISelectionsCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method synthetic lambda$onContentSelectionsAvailable$0$android-app-contentsuggestions-ContentSuggestionsManager$SelectionsCallbackWrapper(ILjava/util/List;)V
    .registers 4

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;->onContentSelectionsAvailable(ILjava/util/List;)V

    return-void
.end method

.method public onContentSelectionsAvailable(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentSelection;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;ILjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method