# classes3.dex

.class public final synthetic Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/telephony/ims/aidl/ISipDelegate;

    invoke-static {p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->lambda$invalidateSipDelegateBinder$1(Landroid/telephony/ims/aidl/ISipDelegate;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object p1

    return-object p1
.end method
