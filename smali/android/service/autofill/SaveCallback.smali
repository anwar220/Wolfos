# classes3.dex

.class public final Landroid/service/autofill/SaveCallback;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveCallback"


# instance fields
.field private final mCallback:Landroid/service/autofill/ISaveCallback;

.field private mCalled:Z


# direct methods
.method constructor <init>(Landroid/service/autofill/ISaveCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    return-void
.end method

.method private assertNotCalled()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onSuccessInternal(Landroid/content/IntentSender;)V
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    :try_start_6
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onSuccess(Landroid/content/IntentSender;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_10
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailure(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    :try_start_1f
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_29
    return-void
.end method

.method public onSuccess()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/autofill/SaveCallback;->onSuccessInternal(Landroid/content/IntentSender;)V

    return-void
.end method

.method public onSuccess(Landroid/content/IntentSender;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-direct {p0, v0}, Landroid/service/autofill/SaveCallback;->onSuccessInternal(Landroid/content/IntentSender;)V

    return-void
.end method
