# classes3.dex

.class public final synthetic Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->lambda$removeSubscriptionsFromGroup$9(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
