# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

.field public final synthetic f$1:Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$removeRegistrationCallback$2$android-telephony-ims-stub-ImsRegistrationImplBase$1(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method
