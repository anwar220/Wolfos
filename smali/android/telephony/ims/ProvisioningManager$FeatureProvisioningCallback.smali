# classes3.dex

.class public abstract Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FeatureProvisioningCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;

    return-object v0
.end method

.method public abstract onFeatureProvisioningChanged(IIZ)V
.end method

.method public abstract onRcsFeatureProvisioningChanged(IIZ)V
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->-$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;Ljava/util/concurrent/Executor;)V

    return-void
.end method
