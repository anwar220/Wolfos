# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/NumberVerificationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/NumberVerificationCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;->f$0:Landroid/telephony/NumberVerificationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;->f$0:Landroid/telephony/NumberVerificationCallback;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->lambda$requestNumberVerification$9(Landroid/telephony/NumberVerificationCallback;)V

    return-void
.end method
