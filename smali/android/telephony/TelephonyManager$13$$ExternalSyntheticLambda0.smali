# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;

.field public final synthetic f$1:Landroid/telephony/CallForwardingInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;Landroid/telephony/CallForwardingInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/CallForwardingInfo;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/CallForwardingInfo;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager$13;->lambda$onCallForwardingInfoAvailable$0(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;Landroid/telephony/CallForwardingInfo;)V

    return-void
.end method
