# classes3.dex

.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$executeApiCall$6$android-service-quickaccesswallet-QuickAccessWalletClientImpl(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method
