# classes3.dex

.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$unregisterWalletServiceEventListener$4$android-service-quickaccesswallet-QuickAccessWalletService$1(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method
