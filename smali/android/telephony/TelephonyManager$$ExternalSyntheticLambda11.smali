# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 4

    iget-wide v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;->f$0:J

    invoke-static {v0, v1, p1}, Landroid/telephony/TelephonyManager;->lambda$convertNetworkTypeBitmaskToString$11(JI)Z

    move-result p1

    return p1
.end method
