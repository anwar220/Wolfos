# classes3.dex

.class public final synthetic Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    iput p2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->lambda$onIntConfigChanged$0$android-telephony-ims-ProvisioningManager$Callback$CallbackBinder(II)V

    return-void
.end method