# classes.dex

.class public final synthetic Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt$1;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAuthenticationFailed$1$android-hardware-biometrics-BiometricPrompt$1()V

    return-void
.end method
