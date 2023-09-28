# classes3.dex

.class final Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/service/autofill/SavedDatasetsInfoCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillService"


# instance fields
.field private final mReceiver:Lcom/android/internal/os/IResultReceiver;

.field private final mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    iput-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    return-void
.end method

.method private send(ILandroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_25

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send onSavedPasswordCountRequest result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    nop

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "error"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1, v0}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/autofill/SavedDatasetsInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_f
    const/4 v0, -0x1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/SavedDatasetsInfo;

    iget-object v5, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/service/autofill/SavedDatasetsInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v4}, Landroid/service/autofill/SavedDatasetsInfo;->getCount()I

    move-result v0

    :cond_30
    goto :goto_14

    :cond_31
    if-gez v0, :cond_37

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void
.end method
