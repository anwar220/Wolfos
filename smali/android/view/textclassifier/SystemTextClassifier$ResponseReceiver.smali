# classes2.dex

.class final Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SystemTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResponseReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mName:Ljava/lang/String;

.field private mResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-string v0, "androidtc"

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_55

    :try_start_c
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->getSystemTextClassifierApiTimeoutInSecond()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout in ResponseReceiver.get(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_34} :catch_35

    :cond_34
    goto :goto_55

    :catch_35
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted during ResponseReceiver.get(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public onFailure()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request failed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidtc"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mResponse:Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
