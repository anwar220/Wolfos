# classes3.dex

.class public final synthetic Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/SubscriptionManager$CallISubMethodHelper;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;->f$0:I

    iput p2, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;->f$1:I

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/ISub;)I
    .registers 4

    iget v0, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;->f$0:I

    iget v1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;->f$1:I

    invoke-static {v0, v1, p1}, Landroid/telephony/SubscriptionManager;->lambda$setIconTint$2(IILcom/android/internal/telephony/ISub;)I

    move-result p1

    return p1
.end method
