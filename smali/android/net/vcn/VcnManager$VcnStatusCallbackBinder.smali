# classes2.dex

.class public Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;
.super Landroid/net/vcn/IVcnStatusCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcnStatusCallbackBinder"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/vcn/VcnManager$VcnStatusCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/net/vcn/IVcnStatusCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->mCallback:Landroid/net/vcn/VcnManager$VcnStatusCallback;

    return-void
.end method

.method private static createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 7

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object v1

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method synthetic lambda$onGatewayConnectionError$2$android-net-vcn-VcnManager$VcnStatusCallbackBinder(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->mCallback:Landroid/net/vcn/VcnManager$VcnStatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$onGatewayConnectionError$3$android-net-vcn-VcnManager$VcnStatusCallbackBinder(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onVcnStatusChanged$0$android-net-vcn-VcnManager$VcnStatusCallbackBinder(I)V
    .registers 3

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->mCallback:Landroid/net/vcn/VcnManager$VcnStatusCallback;

    invoke-virtual {v0, p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->onStatusChanged(I)V

    return-void
.end method

.method synthetic lambda$onVcnStatusChanged$1$android-net-vcn-VcnManager$VcnStatusCallbackBinder(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p3, p4}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda3;-><init>(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onVcnStatusChanged(I)V
    .registers 3

    new-instance v0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda2;-><init>(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
