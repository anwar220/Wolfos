# classes3.dex

.class public final synthetic Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;

.field public final synthetic f$1:Landroid/telephony/ims/SipMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;Landroid/telephony/ims/SipMessage;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;

    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/SipMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/SipMessage;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->lambda$onMessageReceived$0$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$2(Landroid/telephony/ims/SipMessage;)V

    return-void
.end method
