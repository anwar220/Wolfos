# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/telephony/ims/ImsStreamMediaProfile;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iput p2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;->f$1:I

    iput-object p3, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;->f$2:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iget v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;->f$1:I

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;->f$2:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$update$21$android-telephony-ims-stub-ImsCallSessionImplBase$1(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method