# classes3.dex

.class Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;
.super Lcom/android/internal/telephony/IImsStateCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IImsStateCallbackStub"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/ImsStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsStateCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/telephony/IImsStateCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic lambda$onAvailable$0(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 1

    invoke-virtual {p0}, Landroid/telephony/ims/ImsStateCallback;->onAvailable()V

    return-void
.end method

.method static synthetic lambda$onUnavailable$2(Landroid/telephony/ims/ImsStateCallback;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsStateCallback;->onUnavailable(I)V

    return-void
.end method


# virtual methods
.method getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method synthetic lambda$onAvailable$1$android-telephony-ims-ImsStateCallback$IImsStateCallbackStub(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onUnavailable$3$android-telephony-ims-ImsStateCallback$IImsStateCallbackStub(Landroid/telephony/ims/ImsStateCallback;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAvailable()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onUnavailable(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
