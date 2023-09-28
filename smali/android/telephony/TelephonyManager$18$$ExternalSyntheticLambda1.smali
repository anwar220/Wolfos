# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyManager$18;

.field public final synthetic f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyManager$18;Landroid/os/OutcomeReceiver;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/TelephonyManager$18;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$1:Landroid/os/OutcomeReceiver;

    iput p3, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/TelephonyManager$18;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$1:Landroid/os/OutcomeReceiver;

    iget v2, p0, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager$18;->lambda$onReceiveResult$1$android-telephony-TelephonyManager$18(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method
