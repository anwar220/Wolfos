# classes3.dex

.class Landroid/telephony/euicc/EuiccCardManager$13;
.super Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/euicc/EuiccCardManager;->requestRulesAuthTable(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/euicc/EuiccCardManager;

.field final synthetic val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/telephony/euicc/EuiccCardManager$13;->this$0:Landroid/telephony/euicc/EuiccCardManager;

    iput-object p2, p0, Landroid/telephony/euicc/EuiccCardManager$13;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/euicc/EuiccCardManager$13;->val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onComplete$0(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/telephony/euicc/EuiccCardManager$ResultCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/telephony/euicc/EuiccCardManager$13;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/euicc/EuiccCardManager$13;->val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    new-instance v4, Landroid/telephony/euicc/EuiccCardManager$13$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, p2}, Landroid/telephony/euicc/EuiccCardManager$13$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;ILandroid/telephony/euicc/EuiccRulesAuthTable;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
