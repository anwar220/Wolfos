# classes3.dex

.class public Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RcsProvisioningCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    return-object v0
.end method

.method public onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onConfigurationChanged([B)V
    .registers 2

    return-void
.end method

.method public onConfigurationReset()V
    .registers 1

    return-void
.end method

.method public onPreProvisioningReceived([B)V
    .registers 2

    return-void
.end method

.method public onRemoved()V
    .registers 1

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->-$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;Ljava/util/concurrent/Executor;)V

    return-void
.end method
