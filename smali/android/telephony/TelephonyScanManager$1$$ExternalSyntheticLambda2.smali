# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyScanManager$1;->lambda$handleMessage$2(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    return-void
.end method
