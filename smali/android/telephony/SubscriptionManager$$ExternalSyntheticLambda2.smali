# classes3.dex

.class public final synthetic Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/SubscriptionManager$CallISubMethodHelper;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionManager;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/SubscriptionManager;

    iput p2, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/ISub;)I
    .registers 5

    iget-object v0, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/telephony/SubscriptionManager;->lambda$setUsageSetting$12$android-telephony-SubscriptionManager(IILcom/android/internal/telephony/ISub;)I

    move-result p1

    return p1
.end method
