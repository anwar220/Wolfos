# classes3.dex

.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

.field public final synthetic f$1:Landroid/telephony/ims/aidl/IImsSmsListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iput-object p2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;->f$1:Landroid/telephony/ims/aidl/IImsSmsListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda17;->f$1:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$setSmsListener$15$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method
