# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/NumberVerificationCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/NumberVerificationCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/NumberVerificationCallback;

    iput p2, p0, Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/NumberVerificationCallback;

    iget v1, p0, Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager$6;->lambda$onVerificationFailed$1(Landroid/telephony/NumberVerificationCallback;I)V

    return-void
.end method
