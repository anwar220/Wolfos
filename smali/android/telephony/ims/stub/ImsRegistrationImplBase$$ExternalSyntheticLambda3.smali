# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

.field public final synthetic f$1:[Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$1:[Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;->f$1:[Landroid/net/Uri;

    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->lambda$onSubscriberAssociatedUriChanged$4$android-telephony-ims-stub-ImsRegistrationImplBase([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method
