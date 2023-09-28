# classes2.dex

.class Landroid/net/lowpan/LowpanInterface$1;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanInterface;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V
    .registers 4

    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    if-eqz p2, :cond_e

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_27

    :cond_e
    invoke-static {p1}, Landroid/net/lowpan/LowpanInterface;->-$$Nest$fgetmLooper(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_20

    new-instance p2, Landroid/os/Handler;

    invoke-static {p1}, Landroid/net/lowpan/LowpanInterface;->-$$Nest$fgetmLooper(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_27

    :cond_20
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    :goto_27
    return-void
.end method

.method static synthetic lambda$onConnectedChanged$1(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onConnectedChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onEnabledChanged$0(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onLinkAddressAdded$8(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressAdded(Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$onLinkAddressRemoved$9(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressRemoved(Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$onLinkNetworkAdded$6(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic lambda$onLinkNetworkRemoved$7(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic lambda$onLowpanIdentityChanged$5(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    return-void
.end method

.method static synthetic lambda$onRoleChanged$3(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onRoleChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStateChanged$4(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onUpChanged$2(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onUpChanged(Z)V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(Z)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda2;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnabledChanged(Z)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda5;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_13

    nop

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v3, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2, v0}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda8;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_13
    move-exception v0

    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkAddressAdded: Bad LinkAddress \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_13

    nop

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v3, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_13
    move-exception v0

    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkAddressRemoved: Bad LinkAddress \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda3;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda7;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .registers 2

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda4;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpChanged(Z)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda9;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
