# classes3.dex

.class Landroid/service/quickaccesswallet/QuickAccessWalletService$1;
.super Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;


# direct methods
.method constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-direct {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onTargetActivityIntentRequested$2$android-service-quickaccesswallet-QuickAccessWalletService$1(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$monTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method synthetic lambda$onWalletCardSelected$1$android-service-quickaccesswallet-QuickAccessWalletService$1(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-virtual {v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    return-void
.end method

.method synthetic lambda$onWalletCardsRequested$0$android-service-quickaccesswallet-QuickAccessWalletService$1(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$monWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method synthetic lambda$registerWalletServiceEventListener$3$android-service-quickaccesswallet-QuickAccessWalletService$1(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$mregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method synthetic lambda$unregisterWalletServiceEventListener$4$android-service-quickaccesswallet-QuickAccessWalletService$1(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$munregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method

.method public onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda5;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWalletDismissed()V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
