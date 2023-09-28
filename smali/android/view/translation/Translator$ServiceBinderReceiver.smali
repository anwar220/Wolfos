# classes2.dex

.class Landroid/view/translation/Translator$ServiceBinderReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceBinderReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
    }
.end annotation


# instance fields
.field private mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSessionId:I

.field private final mTranslator:Landroid/view/translation/Translator;


# direct methods
.method constructor <init>(Landroid/view/translation/Translator;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    return-void
.end method

.method constructor <init>(Landroid/view/translation/Translator;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/Translator;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    iput-object p2, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method getSessionStateResult()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_1a

    if-eqz v1, :cond_12

    nop

    iget v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mSessionId:I

    return v0

    :cond_12
    :try_start_12
    new-instance v1, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;

    const-string v2, "Session not created in 60000ms"

    invoke-direct {v1, v2, v0}, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;-><init>(Ljava/lang/String;Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException-IA;)V

    throw v1
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;

    const-string v3, "Session not created because interrupted"

    invoke-direct {v2, v3, v0}, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;-><init>(Ljava/lang/String;Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException-IA;)V

    throw v2
.end method

.method public send(ILandroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_10
    return-void

    :cond_11
    if-eqz p2, :cond_2b

    const-string v0, "sessionId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mSessionId:I

    const-string v0, "binder"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v1, "Translator"

    const-string v2, "No binder extra result"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    const/4 v0, 0x0

    :cond_2c
    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    invoke-static {v1, v0}, Landroid/view/translation/Translator;->-$$Nest$msetServiceBinder(Landroid/view/translation/Translator;Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    if-eqz v1, :cond_3f

    iget-object v2, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method
