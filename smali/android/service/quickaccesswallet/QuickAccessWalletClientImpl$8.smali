# classes3.dex

.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;


# direct methods
.method constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks-IA;)V

    return-void
.end method

.method static synthetic lambda$onTargetActivityPendingIntentReceived$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;Landroid/app/PendingIntent;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;->onWalletPendingIntentRetrieved(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .registers 5

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
