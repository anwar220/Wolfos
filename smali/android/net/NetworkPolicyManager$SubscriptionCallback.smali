# classes2.dex

.class public Landroid/net/NetworkPolicyManager$SubscriptionCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionOverride(III[I)V
    .registers 5

    return-void
.end method

.method public onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 3

    return-void
.end method
