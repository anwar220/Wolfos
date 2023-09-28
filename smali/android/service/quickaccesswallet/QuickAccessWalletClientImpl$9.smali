# classes3.dex

.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;


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

.field final synthetic val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;


# direct methods
.method constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V
    .registers 4

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;->val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller-IA;)V

    return-void
.end method


# virtual methods
.method performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;->val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    invoke-interface {p1, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method
