# classes3.dex

.class public final synthetic Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$queryCapabilityStatus$0$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method