# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/SipTransportImplBase$1;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/SipTransportImplBase$1;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/SipTransportImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/SipTransportImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/SipTransportImplBase$1;->lambda$binderDied$1$android-telephony-ims-stub-SipTransportImplBase$1(Landroid/os/IBinder;)V

    return-void
.end method
