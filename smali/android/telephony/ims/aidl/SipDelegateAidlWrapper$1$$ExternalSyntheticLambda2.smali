# classes3.dex

.class public final synthetic Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/SipDelegate;

.field public final synthetic f$1:Landroid/telephony/ims/SipMessage;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/SipDelegate;Landroid/telephony/ims/SipMessage;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/stub/SipDelegate;

    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/SipMessage;

    iput-wide p3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/stub/SipDelegate;

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/SipMessage;

    iget-wide v2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->lambda$sendMessage$0(Landroid/telephony/ims/stub/SipDelegate;Landroid/telephony/ims/SipMessage;J)V

    return-void
.end method
