# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$close$0$android-telephony-ims-stub-ImsCallSessionImplBase$1()V

    return-void
.end method
