# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/SipTransportImplBase$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/telephony/ims/DelegateRequest;

.field public final synthetic f$3:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

.field public final synthetic f$4:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/SipTransportImplBase$2;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/SipTransportImplBase$2;

    iput p2, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/DelegateRequest;

    iput-object p4, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$3:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    iput-object p5, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$4:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/SipTransportImplBase$2;

    iget v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/DelegateRequest;

    iget-object v3, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$3:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    iget-object v4, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;->f$4:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telephony/ims/stub/SipTransportImplBase$2;->lambda$createSipDelegate$0$android-telephony-ims-stub-SipTransportImplBase$2(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    return-void
.end method
