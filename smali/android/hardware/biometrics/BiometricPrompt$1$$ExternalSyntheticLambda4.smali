# classes.dex

.class public final synthetic Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iput p2, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iget v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAuthenticationSucceeded$0$android-hardware-biometrics-BiometricPrompt$1(I)V

    return-void
.end method
