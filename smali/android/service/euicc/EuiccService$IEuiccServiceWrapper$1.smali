# classes3.dex

.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$portIndex:I

.field final synthetic val$resolvedBundle:Landroid/os/Bundle;

.field final synthetic val$slotId:I

.field final synthetic val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic val$switchAfterDownload:Z


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V
    .registers 9

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$slotId:I

    iput p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$portIndex:I

    iput-object p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$switchAfterDownload:Z

    iput-boolean p6, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$forceDeactivateSim:Z

    iput-object p7, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$resolvedBundle:Landroid/os/Bundle;

    iput-object p8, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v1, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$slotId:I

    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$portIndex:I

    iget-object v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$switchAfterDownload:Z

    iget-boolean v6, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$forceDeactivateSim:Z

    iget-object v7, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$resolvedBundle:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v7}, Landroid/service/euicc/EuiccService;->onDownloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;)Landroid/service/euicc/DownloadSubscriptionResult;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_30

    :catch_15
    move-exception v0

    const-string v1, "EuiccService"

    const-string v2, "The new onDownloadSubscription(int, int, DownloadableSubscription, boolean, boolean, Bundle) is not implemented. Fall back to the old one."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$slotId:I

    iget-object v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$switchAfterDownload:Z

    iget-boolean v6, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$forceDeactivateSim:Z

    iget-object v7, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$resolvedBundle:Landroid/os/Bundle;

    invoke-virtual/range {v2 .. v7}, Landroid/service/euicc/EuiccService;->onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;)Landroid/service/euicc/DownloadSubscriptionResult;

    move-result-object v1

    move-object v0, v1

    :goto_30
    :try_start_30
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;->val$callback:Landroid/service/euicc/IDownloadSubscriptionCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IDownloadSubscriptionCallback;->onComplete(Landroid/service/euicc/DownloadSubscriptionResult;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-exception v1

    :goto_37
    return-void
.end method
