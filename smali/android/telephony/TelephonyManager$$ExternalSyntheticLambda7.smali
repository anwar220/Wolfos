# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/OutcomeReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/os/OutcomeReceiver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$0:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;->f$0:Landroid/os/OutcomeReceiver;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->lambda$requestModemActivityInfo$15(Landroid/os/OutcomeReceiver;)V

    return-void
.end method
