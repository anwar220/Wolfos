# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsRegistrationAttributes;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/ImsRegistrationAttributes;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/ImsRegistrationAttributes;

    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method
