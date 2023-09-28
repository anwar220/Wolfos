# classes3.dex

.class Landroid/telephony/ims/stub/ImsEcbmImplBase$1;
.super Lcom/android/ims/internal/IImsEcbm$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsEcbmImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;


# direct methods
.method constructor <init>(Landroid/telephony/ims/stub/ImsEcbmImplBase;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    return-void
.end method

.method private executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_3a

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsEcbmImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsEcbmImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method static synthetic lambda$executeMethodAsync$2(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsEcbmImplBase$1;)V

    const-string v1, "exitEmergencyCallbackMode"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$exitEmergencyCallbackMode$1$android-telephony-ims-stub-ImsEcbmImplBase$1()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->exitEmergencyCallbackMode()V

    return-void
.end method

.method synthetic lambda$setListener$0$android-telephony-ims-stub-ImsEcbmImplBase$1(Lcom/android/ims/internal/IImsEcbmListener;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ImsEcbmImplBase"

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "setListener: discarding dead Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)V

    :cond_26
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v0

    if-eqz v0, :cond_45

    if-eqz p1, :cond_45

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/ims/internal/IImsEcbmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    return-void

    :cond_45
    if-nez p1, :cond_4d

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)V

    goto :goto_68

    :cond_4d
    if-eqz p1, :cond_5d

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)V

    goto :goto_68

    :cond_5d
    const-string/jumbo v0, "setListener is being called when there is already an active listener"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)V

    :goto_68
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsEcbmImplBase$1;Lcom/android/ims/internal/IImsEcbmListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
