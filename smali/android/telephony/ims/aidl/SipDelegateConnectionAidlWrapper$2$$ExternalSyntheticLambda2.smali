# classes3.dex

.class public final synthetic Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;

    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->lambda$onMessageSendFailure$2$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$2(Ljava/lang/String;I)V

    return-void
.end method
