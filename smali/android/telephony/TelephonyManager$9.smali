# classes3.dex

.class Landroid/telephony/TelephonyManager$9;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager;

.field final synthetic val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5

    iput-object p1, p0, Landroid/telephony/TelephonyManager$9;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$9;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$9;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$sendErrorToListener$2(Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$sendErrorToListener$3(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$sendResultToListener$0(Landroid/os/OutcomeReceiver;Landroid/telephony/ModemActivityInfo;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sendResultToListener$1(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/ModemActivityInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/ModemActivityInfo;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendErrorToListener(I)V
    .registers 6

    new-instance v0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$ModemActivityInfoException;-><init>(I)V

    iget-object v1, p0, Landroid/telephony/TelephonyManager$9;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$9;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v2, v0}, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private sendResultToListener(Landroid/telephony/ModemActivityInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/TelephonyManager$9;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$9;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, p1}, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/ModemActivityInfo;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "TelephonyManager"

    if-nez p2, :cond_f

    const-string/jumbo v2, "requestModemActivityInfo: received null bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    return-void

    :cond_f
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setDefusable(Z)V

    const-string v2, "exception"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    return-void

    :cond_23
    const-string v2, "controller_activity"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string/jumbo v2, "requestModemActivityInfo: Bundle did not contain expected key"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    return-void

    :cond_35
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v3, v2, Landroid/telephony/ModemActivityInfo;

    if-nez v3, :cond_47

    const-string/jumbo v3, "requestModemActivityInfo: Bundle contained something that wasn\'t a ModemActivityInfo."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    return-void

    :cond_47
    move-object v0, v2

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_5b

    const-string/jumbo v3, "requestModemActivityInfo: Received an invalid ModemActivityInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    return-void

    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestModemActivityInfo: Sending result to app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendResultToListener(Landroid/telephony/ModemActivityInfo;)V

    return-void
.end method
