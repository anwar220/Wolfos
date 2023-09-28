# classes3.dex

.class Landroid/telephony/TelephonyManager$18;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    iput-object p1, p0, Landroid/telephony/TelephonyManager$18;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$18;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$18;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;Landroid/telephony/data/NetworkSlicingConfig;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceiveResult$0$android-telephony-TelephonyManager$18(Landroid/os/OutcomeReceiver;I)V
    .registers 5

    new-instance v0, Landroid/telephony/TelephonyManager$TimeoutException;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager$TimeoutException;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$onReceiveResult$1$android-telephony-TelephonyManager$18(Landroid/os/OutcomeReceiver;I)V
    .registers 5

    new-instance v0, Landroid/telephony/TelephonyManager$ModemErrorException;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager$ModemErrorException;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Landroid/telephony/TelephonyManager$18;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$18;Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_10
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Landroid/telephony/TelephonyManager$18;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$18;Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_20
    nop

    const-string/jumbo v0, "slicing_config_handle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/NetworkSlicingConfig;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$18;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/data/NetworkSlicingConfig;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
