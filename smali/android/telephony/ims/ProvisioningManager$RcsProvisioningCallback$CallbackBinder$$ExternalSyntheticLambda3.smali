# classes3.dex

.class public final synthetic Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    invoke-virtual {v0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->lambda$onRemoved$3$android-telephony-ims-ProvisioningManager$RcsProvisioningCallback$CallbackBinder()V

    return-void
.end method
