# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsConfigImplBase;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase;

    check-cast p1, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->lambda$onNotifyRcsAutoConfigurationReceived$2$android-telephony-ims-stub-ImsConfigImplBase(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method
