# classes3.dex

.class public final synthetic Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    iput-object p2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    iget-object v1, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;->f$1:[B

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->lambda$onConfigurationChanged$0$android-telephony-ims-ProvisioningManager$RcsProvisioningCallback$CallbackBinder([B)V

    return-void
.end method
