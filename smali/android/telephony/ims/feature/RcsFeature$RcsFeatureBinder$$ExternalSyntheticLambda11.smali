# classes3.dex

.class public final synthetic Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic f$1:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$1:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$1:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$setCapabilityExchangeEventListener$5$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    return-void
.end method
